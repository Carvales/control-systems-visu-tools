function varargout = Automatique_GUI(varargin)
%AUTOMATIQUE_GUI MATLAB code file for Automatique_GUI.fig
%      AUTOMATIQUE_GUI, by itself, creates a new AUTOMATIQUE_GUI or raises the existing
%      singleton*.
%
%      H = AUTOMATIQUE_GUI returns the handle to a new AUTOMATIQUE_GUI or the handle to
%      the existing singleton*.
%
%      AUTOMATIQUE_GUI('Property','Value',...) creates a new AUTOMATIQUE_GUI using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to Automatique_GUI_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      AUTOMATIQUE_GUI('CALLBACK') and AUTOMATIQUE_GUI('CALLBACK',hObject,...) call the
%      local function named CALLBACK in AUTOMATIQUE_GUI.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Automatique_GUI

% Last Modified by GUIDE v2.5 24-Aug-2019 19:10:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Automatique_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @Automatique_GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before Automatique_GUI is made visible.
function Automatique_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)
% K=str2num(handles.const_k.String);
% z=str2num(handles.const_z.String);
% wn=str2num(handles.const_wn.String);
% handles.system_function = tf(K,[1/wn^2 2*z/wn 1]); 
% handles.axe1=stepplot(handles.system_function);
handles = update_figure(handles);

% Choose default command line output for Automatique_GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Automatique_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Automatique_GUI_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function const_k_Callback(hObject, eventdata, handles)
% hObject    handle to const_k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
K=str2num(handles.const_k.String);
% z=str2num(handles.const_z.String);
% wn=str2num(handles.const_wn.String);
% handles.system_function = tf(K,[1/wn^2 2*z/wn 1]); 
% handles.axe1=stepplot(handles.system_function);
handles = update_figure(handles);
handles.text_k.String = K;
% Hints: get(hObject,'String') returns contents of const_k as text
%        str2double(get(hObject,'String')) returns contents of const_k as a double


% --- Executes during object creation, after setting all properties.
function const_k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to const_k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function const_z_Callback(hObject, eventdata, handles)
% hObject    handle to const_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% K=str2num(handles.const_k.String);
% z=str2num(handles.const_z.String);
% wn=str2num(handles.const_wn.String);
% handles.system_function = tf(K,[1/wn^2 2*z/wn 1]); 
% handles.axe1=stepplot(handles.system_function);
handles = update_figure(handles);
% Hints: get(hObject,'String') returns contents of const_z as text
%        str2double(get(hObject,'String')) returns contents of const_z as a double


% --- Executes during object creation, after setting all properties.
function const_z_CreateFcn(hObject, eventdata, handles)
% hObject    handle to const_z (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function Td_value_Callback(hObject, eventdata, handles)
% hObject    handle to Td_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = update_figure(handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function Td_value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Td_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function Ti_value_Callback(hObject, eventdata, handles)
% hObject    handle to Ti_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = update_figure(handles);
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function Ti_value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ti_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function Kd_value_Callback(hObject, eventdata, handles)
% hObject    handle to Kd_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Kd = (handles.Kd_value.Value);
% Ti = (handles.Ti_value.Value);
% Td = (handles.Td_value.Value);
% 
% K = str2num(handles.const_k.String);
% z = str2num(handles.const_z.String);
% wn = str2num(handles.const_wn.String);
% handles.system_function = tf(K,[1/wn^2 2*z/wn 1]); 
% % handles.axe1=stepplot(handles.system_function);
% 
% % PID=Kd*tf([Ti*Td Ti 1],[Ti 1]);
% PID=Kd*tf([Ti*Td Ti+Td 1],[Ti 0]);
% CL=feedback(PID*handles.system_function,1);
% handles.axe1=stepplot(CL);

handles.kd_val.String = num2str(hObject.Value);
handles = update_figure(handles);

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function Kd_value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Kd_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function const_wn_Callback(hObject, eventdata, handles)
% hObject    handle to const_wn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = update_figure(handles);
% Hints: get(hObject,'String') returns contents of const_wn as text
%        str2double(get(hObject,'String')) returns contents of const_wn as a double


% --- Executes during object creation, after setting all properties.
function const_wn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to const_wn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function handles = update_figure(handles)
Kd = (handles.Kd_value.Value);
Ti = (handles.Ti_value.Value);
Td = (handles.Td_value.Value);

K = str2num(handles.const_k.String);
z = str2num(handles.const_z.String);
wn = str2num(handles.const_wn.String);

if handles.P_correcteur.Value==0 && handles.PI_correcteur.Value==0 && handles.PID_correcteur.Value==0
    handles.system_function = tf(K,[1/wn^2 2*z/wn 1]); 
    handles.axe1=stepplot(handles.system_function);
else

if handles.P_correcteur.Value==1
    PID = Kd;
end
if handles.PI_correcteur.Value==1
    Td = 0;
    PID = Kd*tf([Ti*Td Ti+Td 1],[Ti 0]);
end
if handles.PID_correcteur.Value==1
    PID = Kd*tf([Ti*Td Ti+Td 1],[Ti 0]);
end
CL=feedback(PID*handles.system_function,1);
handles.axe1=stepplot(CL);
end


% --- Executes on button press in P_correcteur.
function P_correcteur_Callback(hObject, eventdata, handles)
% hObject    handle to P_correcteur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = update_figure(handles);
% Hint: get(hObject,'Value') returns toggle state of P_correcteur


% --- Executes on button press in PI_correcteur.
function PI_correcteur_Callback(hObject, eventdata, handles)
% hObject    handle to PI_correcteur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = update_figure(handles);
% Hint: get(hObject,'Value') returns toggle state of PI_correcteur


% --- Executes on button press in PID_correcteur.
function PID_correcteur_Callback(hObject, eventdata, handles)
% hObject    handle to PID_correcteur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = update_figure(handles);
% Hint: get(hObject,'Value') returns toggle state of PID_correcteur



function kd_val_Callback(hObject, eventdata, handles)
% hObject    handle to kd_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.Kd_value.Value = str2num(hObject.String);
handles = update_figure(handles);
% Hints: get(hObject,'String') returns contents of kd_val as text
%        str2double(get(hObject,'String')) returns contents of kd_val as a double


% --- Executes during object creation, after setting all properties.
function kd_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kd_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
