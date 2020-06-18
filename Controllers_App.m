function varargout = Controllers_App(varargin)
%CONTROLLERS_APP MATLAB code file for Controllers_App.fig
%      CONTROLLERS_APP, by itself, creates a new CONTROLLERS_APP or raises the existing
%      singleton*.
%
%      H = CONTROLLERS_APP returns the handle to a new CONTROLLERS_APP or the handle to
%      the existing singleton*.
%
%      CONTROLLERS_APP('Property','Value',...) creates a new CONTROLLERS_APP using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to Controllers_App_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      CONTROLLERS_APP('CALLBACK') and CONTROLLERS_APP('CALLBACK',hObject,...) call the
%      local function named CALLBACK in CONTROLLERS_APP.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Controllers_App

% Last Modified by GUIDE v2.5 18-Jun-2020 17:37:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @Controllers_App_OpeningFcn, ...
    'gui_OutputFcn',  @Controllers_App_OutputFcn, ...
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


% --- Executes just before Controllers_App is made visible.
function Controllers_App_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

handles = update_figure(handles);

% Choose default command line output for Controllers_App
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Controllers_App wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Controllers_App_OutputFcn(hObject, eventdata, handles)
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
value = str2num(hObject.String);
if(isempty(value))
    value = 1;
end

hObject.String = num2str(value);
handles = update_figure(handles);

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
value = str2double(get(hObject,'String'));
if(isempty(value))
    value = 1;
end

hObject.String = num2str(value);
handles = update_figure(handles);
guidata(hObject, handles);

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
handles = guidata(hObject);

set(handles.td_val,'String',num2str(round(get(hObject,'Value'),2)));

handles = update_figure(handles);

guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function Td_value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Td_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
%addlistener(hObject, 'ContinuousValueChange', @(hObject, eventdata) Td_value_CreateFcn(hObject, eventdata, handles));
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function Ti_value_Callback(hObject, eventdata, handles)
% hObject    handle to Ti_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = guidata(hObject);

set(handles.ti_val,'String',num2str(round(get(hObject,'Value'),2)));
handles = update_figure(handles);

guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function Ti_value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ti_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
addlistener(hObject, 'ContinuousValueChange', @(hObject, eventdata) Ti_value_Callback(hObject, eventdata, handles));
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function Kd_value_Callback(hObject, eventdata, handles)
% hObject    handle to Kd_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = guidata(hObject);

set(handles.kd_val,'String',num2str(round(get(hObject,'Value'),2)));
handles = update_figure(handles);

guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function Kd_value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Kd_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

addlistener(hObject, 'ContinuousValueChange', @(hObject, eventdata) Kd_value_Callback(hObject, eventdata, handles));
% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function const_wn_Callback(hObject, eventdata, handles)
% hObject    handle to const_wn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
value = str2double(get(hObject,'String'));
if(isempty(value))
    value = 1;
end

hObject.String = num2str(value);
handles = update_figure(handles);
guidata(hObject, handles);


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

Kd = get(handles.Kd_value,'Value');
Ti = get(handles.Ti_value,'Value');
Td = get(handles.Td_value,'Value');

K = str2double(get(handles.const_k,'String'));
z = str2double(get(handles.const_z,'String'));
wn = str2double(get(handles.const_wn,'String'));

p_bool = get(handles.P_correcteur,'Value');
pi_bool = get(handles.PI_correcteur,'Value');
pid_bool = get(handles.PID_correcteur,'Value');

if get(handles.popupmenu1,'Value') == 1
    handles.system_function = tf(K,[1 z]);
elseif get(handles.popupmenu1,'Value') == 2
    handles.system_function = tf(K,[1/wn^2 2*z/wn 1]);
else
    print('Je devrais pas arriver là!')
end
    
if ~p_bool && ~pi_bool && ~pid_bool
    h = stepplot(handles.graphique,handles.system_function);
    p = getoptions(h);
    p.XLabel.String = 'Temps';
    p.SettleTimeThreshold = 0.05;
    p.Title.String = 'Réponse indicielle du système';
    all_info = stepinfo(handles.system_function,'SettleTimeThreshold',0.05);
else
    
    if p_bool
        PID = Kd;
    elseif pi_bool
        Td = 0;
        PID = Kd*tf([Ti*Td Ti+Td 1],[Ti 0]);
    elseif pid_bool
        PID = Kd*tf([Ti*Td Ti+Td 1],[Ti 0]);
    end
    
    CL = feedback(PID*handles.system_function,1);
    h = stepplot(handles.graphique,CL);
    p = getoptions(h);
    p.XLabel.String = 'Temps';
    p.SettleTimeThreshold = 0.05;
    p.Title.String = 'Réponse indicielle du système en boucle fermée';
    all_info = stepinfo(CL,'SettleTimeThreshold', 0.05);
    set(handles.err_txt,'String',round(abs(h.Responses.Data.Amplitude(end)-1), 2));
    set(handles.dep_txt,'String',round(all_info.Overshoot, 1));
    
end
    p.Grid = 'on';
    setoptions(h,p)
    h.showCharacteristic('SettlingTime')
    set(handles.tr5_txt,'String',round(all_info.SettlingTime, 2));


    

% --- Executes on button press in P_correcteur.
function P_correcteur_Callback(hObject, eventdata, handles)
% hObject    handle to P_correcteur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if ~get(handles.P_correcteur,'Value')
    set(handles.Kd_value,'Enable','off');
    set(handles.Ti_value,'Enable','off');
    set(handles.Td_value,'Enable','off');
    set(handles.kd_val,'Enable','off')
    set(handles.ti_val,'Enable','off')
    set(handles.td_val,'Enable','off')
else

set(handles.PI_correcteur,'Value',0);
set(handles.PID_correcteur,'Value',0);

set(handles.Kd_value,'Enable','on');
set(handles.Ti_value,'Enable','off');
set(handles.Td_value,'Enable','off');
set(handles.kd_val,'Enable','on')
set(handles.ti_val,'Enable','off')
set(handles.td_val,'Enable','off')
end

handles = update_figure(handles);
guidata(hObject, handles);
% Hint: get(hObject,'Value') returns toggle state of P_correcteur


% --- Executes on button press in PI_correcteur.
function PI_correcteur_Callback(hObject, eventdata, handles)
% hObject    handle to PI_correcteur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if ~get(handles.PI_correcteur,'Value')
    set(handles.Kd_value,'Enable','off');
    set(handles.Ti_value,'Enable','off');
    set(handles.Td_value,'Enable','off');
        set(handles.kd_val,'Enable','off')
    set(handles.ti_val,'Enable','off')
    set(handles.td_val,'Enable','off')
else

set(handles.P_correcteur,'Value',0);
set(handles.PID_correcteur,'Value',0);
set(handles.Kd_value,'Enable','on');

set(handles.Kd_value,'Enable','on');
set(handles.Ti_value,'Enable','on');
set(handles.Td_value,'Enable','off');

set(handles.kd_val,'Enable','on')
set(handles.ti_val,'Enable','on')
set(handles.td_val,'Enable','off')
end
handles = update_figure(handles);

guidata(hObject, handles);


% --- Executes on button press in PID_correcteur.
function PID_correcteur_Callback(hObject, eventdata, handles)
% hObject    handle to PID_correcteur (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% hahandles.PI_correcteur.Value = 0;

if ~get(handles.PID_correcteur,'Value')
    set(handles.Kd_value,'Enable','off');
    set(handles.Ti_value,'Enable','off');
    set(handles.Td_value,'Enable','off');
    set(handles.kd_val,'Enable','off')
    set(handles.ti_val,'Enable','off')
    set(handles.td_val,'Enable','off')
else

set(handles.P_correcteur,'Value',0);
set(handles.PI_correcteur,'Value',0);

set(handles.Kd_value,'Enable','on');
set(handles.Ti_value,'Enable','on');
set(handles.Td_value,'Enable','on');
set(handles.kd_val,'Enable','on')
set(handles.ti_val,'Enable','on')
set(handles.td_val,'Enable','on')
end
handles = update_figure(handles);

guidata(hObject, handles);


function kd_val_Callback(hObject, eventdata, handles)
% hObject    handle to kd_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
value = round(str2double(get(hObject,'String')),2);
if(isempty(value))
    value = 0;
    hObject.String = '0';
end
if value <0
    value = 0;
elseif value >100
    value = 100;
end
set(hObject,'String', num2str(value));
set(handles.Kd_value,'Value',value);
handles = update_figure(handles);

guidata(hObject, handles);


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


% --- Executes during object creation, after setting all properties.
function graphique_CreateFcn(hObject, eventdata, handles)
% hObject    handle to graphique (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate graphique



function ti_val_Callback(hObject, eventdata, handles)
% hObject    handle to ti_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
value = round(str2double(get(hObject,'String')),2);
if(isempty(value))
    value = 1;
    hObject.String = '1';
end
if value <1
    value = 1;
elseif value >100
    value = 100;
end
set(hObject,'String', num2str(value));
set(handles.Ti_value,'Value',value);
handles = update_figure(handles);
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function ti_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ti_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function td_val_Callback(hObject, eventdata, handles)
% hObject    handle to td_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
value = round(str2double(get(hObject,'String')),2);

if(isempty(value))
    value = 1;
    hObject.String = '1';
end

if value <1
    value = 1;
elseif value >100
    value = 100;
end
set(hObject,'String', num2str(value));
set(handles.Td_value,'Value', value);
handles = update_figure(handles);
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function td_val_CreateFcn(hObject, eventdata, handles)
% hObject    handle to td_val (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tr5_txt_Callback(hObject, eventdata, handles)
% hObject    handle to tr5_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tr5_txt as text
%        str2double(get(hObject,'String')) returns contents of tr5_txt as a double


% --- Executes during object creation, after setting all properties.
function tr5_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tr5_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function err_txt_Callback(hObject, eventdata, handles)
% hObject    handle to err_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of err_txt as text
%        str2double(get(hObject,'String')) returns contents of err_txt as a double


% --- Executes during object creation, after setting all properties.
function err_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to err_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function dep_txt_Callback(hObject, eventdata, handles)
% hObject    handle to dep_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dep_txt as text
%        str2double(get(hObject,'String')) returns contents of dep_txt as a double


% --- Executes during object creation, after setting all properties.
function dep_txt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dep_txt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
handles = guidata(hObject);

if get(hObject,'Value') == 1  
	set(handles.text7,'Visible', 'off'); 
    set(handles.const_wn,'Visible', 'off');
    set(handles.text6, 'String', 'Constante                de temps')
    set(handles.panel_1,'Visible', 'on');
    set(handles.panel_2,'Visible', 'off');
else
    set(handles.text7,'Visible', 'on');
    set(handles.const_wn,'Visible', 'on');
    set(handles.text6, 'String', 'Coefficient d''amortissement')
    set(handles.panel_1,'Visible', 'off');
    set(handles.panel_2,'Visible', 'on');
end
handles = update_figure(handles);
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject,'Value',2)





