function varargout = fuzzy_gui(varargin)
% FUZZY_GUI MATLAB code for fuzzy_gui.fig
%      FUZZY_GUI, by itself, creates a new FUZZY_GUI or raises the existing
%      singleton*.
%
%      H = FUZZY_GUI returns the handle to a new FUZZY_GUI or the handle to
%      the existing singleton*.
%
%      FUZZY_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FUZZY_GUI.M with the given input arguments.
%
%      FUZZY_GUI('Property','Value',...) creates a new FUZZY_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fuzzy_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fuzzy_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fuzzy_gui

% Last Modified by GUIDE v2.5 31-May-2024 00:40:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fuzzy_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @fuzzy_gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before fuzzy_gui is made visible.
function fuzzy_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fuzzy_gui (see VARARGIN)

% Choose default command line output for fuzzy_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fuzzy_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fuzzy_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function permintaan_Callback(hObject, eventdata, handles)
% hObject    handle to permintaan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of permintaan as text
%        str2double(get(hObject,'String')) returns contents of permintaan as a double


% --- Executes during object creation, after setting all properties.
function permintaan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to permintaan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function persedian_Callback(hObject, eventdata, handles)
% hObject    handle to persedian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of persedian as text
%        str2double(get(hObject,'String')) returns contents of persedian as a double


% --- Executes during object creation, after setting all properties.
function persedian_CreateFcn(hObject, eventdata, handles)
% hObject    handle to persedian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function jmlPaket_Callback(hObject, eventdata, handles)
% hObject    handle to jmlPaket (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of jmlPaket as text
%        str2double(get(hObject,'String')) returns contents of jmlPaket as a double


% --- Executes during object creation, after setting all properties.
function jmlPaket_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jmlPaket (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
permin = str2num(get(handles.permintaan, 'string'));
persed = str2num(get(handles.persedian, 'string'));

fis = readfis('fuzzy.fis');

result = evalfis([permin, persed], fis);

set(handles.jmlPaket, 'string', result);
