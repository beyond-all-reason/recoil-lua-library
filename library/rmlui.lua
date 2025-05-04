--- @meta

--- @class RmlUi
RmlUi = {}

--- Create a new context.
--- @param name string
--- @return RmlContext?
function RmlUi.CreateContext(name) end

--- Set which context the debug inspector is meant to inspect.
--- @param name string The name of the context
function RmlUi.SetDebugContext(name) end

--- Remove a context.
--- @param name string
function RmlUi.RemoveContext(name) end

--- Load a font face into the Rml system from a filepath.
---@param path string
---@return boolean success
function RmlUi.LoadFontFace(path) end

--- @param tag string
function RmlUi.RegisterTag(tag) end

--- @class RmlDatamodelHandle<T> : {__GetTable:fun():T}
--- Handle for your data model. It is a wrapper around the model table, marked as type T. 
--- You can access fields by using normal indexing, but for the moment, the only keys that work are strings. Any index done this way will automatically trigger a rerender.
--- If you need to index any tables or subtables by anything not a string, you will need to use the underlying table, gotten with `__GetTable`. This will not trigger a rerender.
--- To trigger a rerender manually, use `_SetDirty`, passing in the name of the top-level entry in your model table that you edited.
--- @field __SetDirty fun(self, name: string)

--- @class Colourb
--- Constructs a colour with four channels, each from 0 to 255.
--- @field alpha integer
--- @field blue integer
--- @field green integer
--- @field red integer
--- @field rgba [integer, integer, integer, integer]
--- @field new fun():Colourb
--- @operator add:Colourb
--- @operator mul:Colourb

--- @class Colourf
---
--- @see rgba
--- @field alpha number
--- @field blue number
--- @field green number
--- @field red number
--- @field rgba [number, number, number, number]
--- @field new fun():Colourf

--- @class RmlContext
--- The Context class has no constructor; it must be instantiated through the CreateContext() function. It has the following functions and properties:
--- @field dimensions Vector2i
--- @field documents RmlContextDocumentsProxy
--- @field focus_element RmlElement
--- @field hover_element RmlElement
--- @field name string
--- @field root_element RmlElement
--- @field AddEventListener fun(self: RmlContext, event: string, script: RmlElement, element_context: boolean, in_capture_phase: boolean) Adds the inline Lua script, script, as an event listener to the context. element_context is an optional Element; if it is not None, then the script will be executed as if it was bound to that element.
--- @field CreateDocument fun(self: RmlContext, tag: string):RmlDocument Creates a new document with the tag name of tag.
--- @field LoadDocument fun(self: RmlContext, document_path: string):RmlDocument Attempts to load a document from the RML file found at document_path. If successful, the document will be returned with a reference count of one.
--- @field Render fun(self: RmlContext):boolean Renders the context.
--- @field UnloadAllDocuments fun(self: RmlContext) Closes all documents currently loaded with the context.
--- @field UnloadDocument fun(self: RmlContext, document: RmlDocument) Unloads a specific document within the context.
--- @field Update fun(self: RmlContext):boolean Updates the context.
--- @field OpenDataModel fun(self: RmlContext, name: string, model: table): RmlDatamodelHandle Loads a data model. The handle's generic type matches that of `model`, but LuaCATS solver can't do that yet.

--- @alias RmlContextDocumentsProxy { [string | integer]: RmlDocument }
--- Table of documents with the ability to be iterated over or indexed by an integer or a string.

--- @enum RmlDocumentFocus
RmlDocumentFocus = {
	None = 0,
	Document = 1,
	Keep = 2,
	Auto = 3,
}

--- @enum RmlDocumentModal
RmlDocumentModal = {
	None = 0,
	Modal = 1,
	Keep = 2,
}

--- @class RmlDocument:RmlElement
--- Document derives from Element. Document has no constructor; it must be instantiated through a Context object instead, either by loading an external RML file or creating an empty document. It has the following functions and properties:
--- @field context RmlContext
--- @field title string
--- @field Close fun(self: RmlDocument) Hides and closes the document, destroying its contents.
--- @field CreateElement fun(self: RmlDocument, tag_name: string):RmlElementPtr Instances an element with a tag of tag_name.
--- @field CreateTextNode fun(self: RmlDocument, text: string):RmlElementPtr Instances a text element containing the string text.
--- @field Hide fun(self: RmlDocument) Hides the document.
--- @field PullToFront fun(self: RmlDocument) Pulls the document in front of other documents within its context with a similar z-index.
--- @field PushToBack fun(self: RmlDocument) Pushes the document behind other documents within its context with a similar z-index.
--- @field Show fun(self: RmlDocument, modal: RmlDocumentModal?, focus: RmlDocumentFocus?) Shows the document. flags is either NONE, FOCUS or MODAL. flags defaults to FOCUS.

--- @class RmlElement
--- The Element class has no constructor; it must be instantiated through a Document object instead. It has the following functions and properties:
--- @field attributes RmlElementAttributesProxy
--- @field child_nodes RmlElementChildNodesProxy
--- @field class_name string
--- @field client_height number
--- @field client_left number
--- @field client_top number
--- @field client_width number
--- @field first_child RmlElement?
--- @field id string
--- @field inner_rml string
--- @field last_child RmlElement?
--- @field next_sibling RmlElement?
--- @field offset_height number
--- @field offset_left number
--- @field offset_parent RmlElement
--- @field offset_top number
--- @field offset_width number
--- @field owner_document RmlDocument
--- @field parent_node RmlElement?
--- @field previous_sibling RmlElement?
--- @field scroll_height number
--- @field scroll_left number
--- @field scroll_top number
--- @field scroll_width number
--- @field style RmlElementStyleProxy
--- @field tag_name string
--- @field AddEventListener fun(self: RmlElement, event: boolean, listener: function|string, in_capture_phase: boolean) NOTE: Events added from python cannot be removed.
--- @field AppendChild fun(self: RmlElement, element: RmlElementPtr) Appends element as a child to this element.
--- @field Blur fun(self: RmlElement) Removes input focus from this element.
--- @field Click fun(self: RmlElement) Fakes a click on this element.
--- @field DispatchEvent fun(self: RmlElement, event: string, parameters: table, interruptible: string) Dispatches an event to this element. The event is of type event. Parameters to the event are given in the dictionary parameters; the dictionary must only contain string keys and floating-point, integer or string values. interruptible determines if the event can be forced to stop propagation early.
--- @field Focus fun(self: RmlElement) Gives input focus to this element.
--- @field GetAttribute fun(self: RmlElement, name: string):any Returns the value of the attribute named name. If no such attribute exists, the empty string will be returned.
--- @field GetElementById fun(self: RmlElement, id: string):RmlElement Returns the descendant element with an id of id.
--- @field GetElementsByTagName fun(self: RmlElement, tag_name: string):RmlElementPtr[] Returns a list of all descendant elements with the tag of tag_name.
--- @field HasAttribute fun(self: RmlElement, name: string):boolean Returns True if the element has a value for the attribute named name, False if not.
--- @field HasChildNodes fun(self: RmlElement):boolean Returns True if the element has at least one child node, false if not.
--- @field InsertBefore fun(self: RmlElement, element: RmlElementPtr, adjacent_element: RmlElement) Inserts the element element as a child of this element, directly before adjacent_element in the list of children.
--- @field IsClassSet fun(self: RmlElement, name: string):boolean Returns true if the class name is set on the element, false if not.
--- @field RemoveAttribute fun(self: RmlElement, name: string) Removes the attribute named name from the element.
--- @field RemoveChild fun(self: RmlElement, element: RmlElement):boolean Removes the child element element from this element.
--- @field ReplaceChild fun(self: RmlElement, inserted_element: RmlElementPtr, replaced_element: RmlElement):boolean Replaces the child element replaced_element with inserted_element in this element's list of children. If replaced_element is not a child of this element, inserted_element will be appended onto the list instead.
--- @field ScrollIntoView fun(self: RmlElement, align_with_top: boolean) Scrolls this element into view if its ancestors have hidden overflow. If align_with_top is True, the element's top edge will be aligned with the top (or as close as possible to the top) of its ancestors' viewing windows. If False, its bottom edge will be aligned to the bottom.
--- @field SetAttribute fun(self: RmlElement, name: string, value: string) Sets the value of the attribute named name to value.
--- @field SetClass fun(self: RmlElement, name: string, value: boolean) Sets (if value is true) or clears (if value is false) the class name on the element.

--- @alias RmlElementAttributesProxy {[string]: string|number|boolean}
--- Contains all the attributes of an element: The stuff in the opening tag i.e. `<span class="my-class">`

--- @alias RmlElementChildNodesProxy RmlElement[]
--- Contains a list of all child elements.

--- @class RmlElementDataGrid:RmlElement
--- ElementDataGrid derives from Element. The data grid has the following functions and properties:
--- @field rows RmlElementDataGridRow
--- @field AddColumn fun(self: RmlElementDataGrid, fields: string, formatter: string, initial_width: number, header_rml: string) Adds a new column to the data grid. The column will read the columns fields (in CSV format) from the grid's data source, processing it through the data formatter named formatter. header_rml specifies the RML content of the column's header.
--- @field SetDataSource fun(self: RmlElementDataGrid, data_source_name: string) Sets the name and table of the new data source to be used by the data grid.

--- @class RmlElementDataGridRow:RmlElement
--- ElementDataGridRow derives from Element. The data grid row has the following properties:
--- @field parent_grid RmlElementDataGrid
--- @field parent_relative_index integer
--- @field parent_row RmlElementDataGridRow
--- @field row_expanded boolean
--- @field table_relative_index integer

--- @class RmlElementForm:RmlElement
--- ElementForm derives from Element. The form element has the following function:
--- @field Submit fun(self: RmlElementForm, submit_value: string?, submit_value: string?) Submits the form with a submit value of submit_value.

--- @class RmlElementFormControlInput:RmlElementFormControl
--- ElementFormControlInput derives from IElementFormControl. The control has the following properties, only appropriate on the relevant types:
--- @field checked boolean
--- @field max integer
--- @field maxlength integer
--- @field min integer
--- @field size integer
--- @field step integer
--- @field GetSelection fun(self: RmlElementFormControlInput): integer, integer, string
--- @field Select fun(self: RmlElementFormControlInput)
--- @field SetSelection fun(self: RmlElementFormControlInput, selection_start: integer, selection_end: integer)

--- @class RmlElementFormControl
--- @field disabled boolean
--- @field name string
--- @field value string

--- @alias RmlSelectOptionsProxy {element: RmlElement, value: string}[]
--- This one has no documentation.

--- @class RmlElementFormControlSelect:RmlElementFormControl
--- ElementFormControlSelect derives from ElementFormControl. The control has the following functions and properties:
--- @field options RmlSelectOptionsProxy
--- @field selection integer
--- @field Add fun(self: RmlElementFormControlSelect, rml: string, value: string, before: integer?):integer Adds a new option to the select box. The new option has the string value of value and is represented by the elements created by the RML string rml. The new option will be inserted by the index specified by before; if this is out of bounds (the default), then the new option will be appended onto the list. The index of the new option will be returned.
--- @field Remove fun(self: RmlElementFormControlSelect, index: integer) Removes an existing option from the selection box.
--- @field RemoveAll fun(self: RmlElementFormControlSelect)

--- @class RmlElementFormControlTextArea:RmlElementFormControl
--- ElementFormControlTextArea derives from ElementFormControl. The control has the following properties:
--- @field cols integer
--- @field maxlength integer
--- @field rows integer
--- @field wordwrap boolean
--- @field Add fun(self: RmlElementFormControlTextArea, rml: string, value: string, before: integer?):integer Adds a new option to the select box. The new option has the string value of value and is represented by the elements created by the RML string rml. The new option will be inserted by the index specified by before; if this is out of bounds (the default), then the new option will be appended onto the list. The index of the new option will be returned.
--- @field Remove fun(self: RmlElementFormControlTextArea, index: integer) Removes an existing option from the selection box.
--- @field RemoveAll fun(self: RmlElementFormControlTextArea)

--- @class RmlElementInstancer
---
--- @field new fun():RmlElementInstancer
--- @field InstanceElement fun(self: RmlElementInstancer):any

--- @class RmlElementPtr
--- Represents an owned element. This type is mainly used to modify the DOM tree by passing the object into other elements. For example `RmlElement.AppendChild()`.
--- A current limitation in the Lua plugin is that Element member properties and functions cannot be used directly on this type.

--- @alias RmlElementStyleProxy { [string]: string }
--- Gets the rcss styles associated with an element. As far as I can tell, the values will always be a string.

--- @class RmlElementTabSet:RmlElement
--- ElementTabSet derives from Element. The control has the following functions and properties:
--- @field active_tab integer
--- @field num_tabs integer
--- @field SetPanel fun(self: RmlElementTabSet, index: integer, rml: string) Sets the contents of a panel to the RML content rml. If index is out-of-bounds, a new panel will be added at the end.
--- @field SetTab fun(self: RmlElementTabSet, index: integer, rml: string) Sets the contents of a tab to the RML content rml. If index is out-of-bounds, a new tab will be added at the end.

--- @class RmlElementText:RmlElement
---
--- @field text string

--- @class RmlEvent
--- The Event class has no constructor; it is generated internally. It has the following functions and properties:
--- @field current_element RmlElement
--- @field parameters RmlEventParametersProxy
--- @field target_element RmlElement
--- @field type string
--- @field StopPropagation fun(self: RmlEvent) Stops the propagation of the event through the event cycle, if allowed.

--- @alias RmlEventParametersProxy.MouseButton
--- | 0 # Left
--- | 1 # Right
--- | 2 # Middle

--- @alias RmlEventParametersProxy.TrueFalse
--- | 0 # False
--- | 1 # True

--- @alias RmlEventParametersProxy {
--- button: RmlEventParametersProxy.MouseButton,
--- mouse_x: integer,
--- mouse_y: integer,
--- scroll_lock_key: RmlEventParametersProxy.TrueFalse,
--- meta_key: RmlEventParametersProxy.TrueFalse,
--- ctrl_key: RmlEventParametersProxy.TrueFalse,
--- shift_key: RmlEventParametersProxy.TrueFalse,
--- caps_lock_key: RmlEventParametersProxy.TrueFalse,
--- alt_key: RmlEventParametersProxy.TrueFalse,
--- }

--- @class RmlGlobalLuaFunctions
--- Implemented in the RmlUi class.
--- @see RmlUi

--- @deprecated Use Recoil functions instead
--- @class RmlLog
---
--- @field logtype RmlLogType
--- @field LogMessage fun(self: RmlLog, type: RmlLogType, str: string)

--- @deprecated Use Recoil functions instead
--- @enum RmlLogType
--- Enum table for specifying the type of log.
RmlLogType = {
	always = 0,
	error = 1,
	warning = 2,
	info = 3,
	debug = 4,
}

--- @class RmlLuaDataSource
---
--- @field new fun():RmlLuaDataSource

--- @alias RmlUiContextsProxy {[string|integer]: RmlContext? }
--- A list of contexts.

--- @class Vector2f
--- Constructs a two-dimensional floating-point vector.
--- @see float2
--- @field magnitude number
--- @field x number
--- @field y number
--- @field DotProduct fun(self: Vector2f, other: Vector2f):number
--- @field Normalise fun(self: Vector2f):Vector2f
--- @field Rotate fun(self: Vector2f, angle: number):Vector2f
--- @field new fun():Vector2f
--- @operator add:Vector2f
--- @operator div:Vector2f
--- @operator mul:Vector2f
--- @operator sub:Vector2f

--- @class Vector2i
--- Constructs a two-dimensional integral vector.
--- @field magnitude number
--- @field x integer
--- @field y integer
--- @field new fun():Vector2i
--- @operator add:Vector2i
--- @operator div:Vector2i
--- @operator mul:Vector2i
--- @operator sub:Vector2i
