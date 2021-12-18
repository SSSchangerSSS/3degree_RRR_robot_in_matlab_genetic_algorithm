function varargout = untitled(varargin)
% untitled MATLAB code for untitled.fig
%      untitled, by itself, creates a new untitled or raises the existing
%      singleton*.
%
%      H = untitled returns the handle to a new untitled or the handle to
%      the existing singleton*.
%
%      untitled('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in untitled.M with the given input arguments.
%
%      untitled('Property','Value',...) creates a new untitled or raises
%      the existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 16-Jun-2021 10:51:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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

% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

initialize_gui(hObject, handles, false);
initialize_gui2(hObject, handles, false);
initialize_gui(gcbf, handles, true);
initialize_gui2(gcbf, handles, true);
initialize_all_gui(handles);
% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



%------------------------------------------------------------------------forward

% --- Executes during object creation, after setting all properties.
function theta1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function theta1_Callback(hObject, eventdata, handles)
% hObject    handle to theta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta3 as text
%        str2double(get(hObject,'String')) returns contents of theta3 as a double
theta1 = str2double(get(hObject, 'String'));
if isnan(theta1)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new theta3 value
handles.metricdata.theta1 = theta1;
guidata(hObject,handles)



% --- Executes during object creation, after setting all properties.
function theta2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta2_Callback(hObject, eventdata, handles)
% hObject    handle to theta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta2 as text
%        str2double(get(hObject,'String')) returns contents of theta2 as a double
theta2 = str2double(get(hObject, 'String'));
if isnan(theta2)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new theta2 value
handles.metricdata.theta2 = theta2;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function theta3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta3_Callback(hObject, eventdata, handles)
% hObject    handle to theta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta3 as text
%        str2double(get(hObject,'String')) returns contents of theta3 as a double
theta3 = str2double(get(hObject, 'String'));
if isnan(theta3)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new theta3 value
handles.metricdata.theta3 = theta3;
guidata(hObject,handles)




%------------------------------------------------------------------------inverse

% --- Executes during object creation, after setting all properties.
function X1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function X1_Callback(hObject, eventdata, handles)
% hObject    handle to theta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta3 as text
%        str2double(get(hObject,'String')) returns contents of theta3 as a double
X1 = str2double(get(hObject, 'String'));
if isnan(X1)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new theta3 value
handles.metricdata.X1 = X1;
guidata(hObject,handles)



% --- Executes during object creation, after setting all properties.
function Y1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Y1_Callback(hObject, eventdata, handles)
% hObject    handle to theta2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta2 as text
%        str2double(get(hObject,'String')) returns contents of theta2 as a double
Y1 = str2double(get(hObject, 'String'));
if isnan(Y1)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new theta2 value
handles.metricdata.Y1 = Y1;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function Z1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Z1_Callback(hObject, eventdata, handles)
% hObject    handle to theta3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta3 as text
%        str2double(get(hObject,'String')) returns contents of theta3 as a double
Z1 = str2double(get(hObject, 'String'));
if isnan(Z1)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new theta3 value
handles.metricdata.Z1 = Z1;
guidata(hObject,handles)

%------------------------------------------------------------------------calculations
%and reset

% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pi = sym('pi');
pi = double(pi);
t1 = handles.metricdata.theta1 * pi/180;
t2 = handles.metricdata.theta2 * pi/180;
t3 = handles.metricdata.theta3 * pi/180;
a1 = 10;
a2 = 7;
a3 = 5;
T_1 = T_matrix(0, a1, 0, t1);
T_2 = T_matrix(0, a2, 0, t2);
T_3 = T_matrix(0, a3, 0, t3);
T_4 = T_1*T_2*T_3;
EE = T_4*[0;0;0;1];
X = EE(1) ;
Y = EE(2) ;
Z = (t1 + t2 + t3) * 180/pi ;
set(handles.X, 'String', X);
set(handles.Y, 'String', Y);
set(handles.Z, 'String', Z);
%--------------------------------------------------toolbox
L(1) = Link([0, 0, a1, 0], 'standard');
L(2) = Link([0, 0, a2, 0], 'standard');
L(3) = Link([0, 0, a3, 0], 'standard');
Robot = SerialLink(L);
Robot.name = 'RRR-Robot';
t1 = handles.metricdata.theta1_toolbox * pi/180;
t2 = handles.metricdata.theta2_toolbox * pi/180;
t3 = handles.metricdata.theta3_toolbox * pi/180;
H = Robot.fkine([t1 t2 t3]);
H
X = H.t(1);
Y = H.t(2);
Z = (t1+t2+t3)*180/pi;

set(handles.X_toolbox, 'String', X);
set(handles.Y_toolbox, 'String', Y);
set(handles.Z_toolbox, 'String', Z);
Robot.plot([t1 t2 t3]);



% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

initialize_gui(gcbf, handles, true);



% --- Executes on button press in calculate_inverse.
function calculate_inverse_Callback(hObject, eventdata, handles)
% hObject    handle to calculate_inverse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pi = sym('pi');
pi = double(pi);
xx = handles.metricdata.X1;
yy = handles.metricdata.Y1;
zz = handles.metricdata.Z1;
AllTHETAS = geneticAlgorithm(xx,yy,zz);
set(handles.theta1_1, 'String', AllTHETAS(1));
set(handles.theta2_1, 'String', AllTHETAS(2));
set(handles.theta3_1, 'String', AllTHETAS(3));
%------------------------------------------------------------------toolbox
a1 = 10;
a2 = 7;
a3 = 5;
L(1) = Link([0, 0, a1, 0], 'standard');
L(2) = Link([0, 0, a2, 0], 'standard');
L(3) = Link([0, 0, a3, 0], 'standard');
Robot = SerialLink(L);
Robot.name = 'RRR-Robot';
xx = handles.metricdata.X1_toolbox;
yy = handles.metricdata.Y1_toolbox;
zz = handles.metricdata.Z1_toolbox * pi/180;
T = [ 1 0 0 xx;
      0 1 0 yy;
      0 0 1 0;
      0 0 0 1];
AllTHETAS = Robot.ikine(T, [0 0 0], 'mask',[1 1 1 0 0 0]);
AllTHETAS(3) = zz -(AllTHETAS(2) + AllTHETAS(1));
set(handles.theta1_1_toolbox, 'String', AllTHETAS(1)* 180/pi);
set(handles.theta2_1_toolbox, 'String', AllTHETAS(2)* 180/pi);
set(handles.theta3_1_toolbox, 'String', AllTHETAS(3)* 180/pi);
AllTHETAS
Robot.plot([AllTHETAS(1) AllTHETAS(2) AllTHETAS(3)]);


% --- Executes on button press in reset_inverse.
function reset_inverse_Callback(hObject, eventdata, handles)
% hObject    handle to reset_inverse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
initialize_gui2(gcbf, handles, true);


% --- Executes when selected object changed in unitgroup.
function unitgroup_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in unitgroup 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

if (hObject == handles.english)
    set(handles.text4, 'String', 'lb/cu.in');
    set(handles.text5, 'String', 'cu.in');
    set(handles.text6, 'String', 'lb');
else
    set(handles.text4, 'String', 'kg/cu.m');
    set(handles.text5, 'String', 'cu.m');
    set(handles.text6, 'String', 'kg');
end

% --------------------------------------------------------------------
function initialize_gui(fig_handle, handles, isreset)
% If the metricdata field is present and the reset flag is false, it means
% we are we are just re-initializing a GUI by calling it from the cmd line
% while it is up. So, bail out as we dont want to reset the data.
if isfield(handles, 'metricdata') && ~isreset
    return;
end

handles.metricdata.theta1  = 0;
handles.metricdata.theta2 = 0;
handles.metricdata.theta3  = 0;

handles.metricdata.theta1_toolbox  = 0;
handles.metricdata.theta2_toolbox = 0;
handles.metricdata.theta3_toolbox  = 0;

set(handles.theta1, 'String', handles.metricdata.theta1);
set(handles.theta2, 'String', handles.metricdata.theta2);
set(handles.theta3,  'String', handles.metricdata.theta3);
set(handles.X, 'String', 0);
set(handles.Y, 'String', 0);
set(handles.Z, 'String', 0);


set(handles.theta1_toolbox, 'String', handles.metricdata.theta1_toolbox);
set(handles.theta2_toolbox, 'String', handles.metricdata.theta2_toolbox);
set(handles.theta3_toolbox,  'String', handles.metricdata.theta3_toolbox);
set(handles.X_toolbox, 'String', 0);
set(handles.Y_toolbox, 'String', 0);
set(handles.Z_toolbox, 'String', 0);

% Update handles structure
guidata(handles.figure1, handles);
%------------------------------------------------------------------------
function initialize_gui2(fig_handle, handles, isreset)
% If the metricdata field is present and the reset flag is false, it means
% we are we are just re-initializing a GUI by calling it from the cmd line
% while it is up. So, bail out as we dont want to reset the data.
if isfield(handles, 'metricdata') && ~isreset
    return;
end

handles.metricdata.X1  = 0;
handles.metricdata.Y1 = 0;
handles.metricdata.Z1  = 0;

handles.metricdata.X1_toolbox  = 0;
handles.metricdata.Y1_toolbox = 0;
handles.metricdata.Z1_toolbox  = 0;

set(handles.X1, 'String', handles.metricdata.X1);
set(handles.Y1, 'String', handles.metricdata.Y1);
set(handles.Z1,  'String', handles.metricdata.Z1);
set(handles.theta1_1, 'String', 0);
set(handles.theta2_1, 'String', 0);
set(handles.theta3_1, 'String', 0);

set(handles.X1_toolbox, 'String', handles.metricdata.X1_toolbox);
set(handles.Y1_toolbox, 'String', handles.metricdata.Y1_toolbox);
set(handles.Z1_toolbox,  'String', handles.metricdata.Z1_toolbox);
set(handles.theta1_1_toolbox, 'String', 0);
set(handles.theta2_1_toolbox, 'String', 0);
set(handles.theta3_1_toolbox, 'String', 0);

% Update handles structure
guidata(handles.figure1, handles);

function initialize_all_gui(handles)

handles.metricdata.X1  = 0;
handles.metricdata.Y1 = 0;
handles.metricdata.Z1  = 0;

handles.metricdata.X1_toolbox  = 0;
handles.metricdata.Y1_toolbox = 0;
handles.metricdata.Z1_toolbox  = 0;

set(handles.X1, 'String', handles.metricdata.X1);
set(handles.Y1, 'String', handles.metricdata.Y1);
set(handles.Z1,  'String', handles.metricdata.Z1);
set(handles.theta1_1, 'String', 0);
set(handles.theta2_1, 'String', 0);
set(handles.theta3_1, 'String', 0);


set(handles.X1_toolbox, 'String', handles.metricdata.X1_toolbox);
set(handles.Y1_toolbox, 'String', handles.metricdata.Y1_toolbox);
set(handles.Z1_toolbox,  'String', handles.metricdata.Z1_toolbox);
set(handles.theta1_1_toolbox, 'String', 0);
set(handles.theta2_1_toolbox, 'String', 0);
set(handles.theta3_1_toolbox, 'String', 0);

handles.metricdata.theta1  = 0;
handles.metricdata.theta2 = 0;
handles.metricdata.theta3  = 0;

set(handles.theta1, 'String', handles.metricdata.theta1);
set(handles.theta2, 'String', handles.metricdata.theta2);
set(handles.theta3,  'String', handles.metricdata.theta3);
set(handles.X, 'String', 0);
set(handles.Y, 'String', 0);
set(handles.Z, 'String', 0);


handles.metricdata.theta1_toolbox  = 0;
handles.metricdata.theta2_toolbox = 0;
handles.metricdata.theta3_toolbox  = 0;

set(handles.theta1_toolbox, 'String', handles.metricdata.theta1_toolbox);
set(handles.theta2_toolbox, 'String', handles.metricdata.theta2_toolbox);
set(handles.theta3_toolbox,  'String', handles.metricdata.theta3_toolbox);
set(handles.X_toolbox, 'String', 0);
set(handles.Y_toolbox, 'String', 0);
set(handles.Z_toolbox, 'String', 0);

% Update handles structure
guidata(handles.figure1, handles);



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to Y1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Y1 as text
%        str2double(get(hObject,'String')) returns contents of Y1 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Y1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to Z1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Z1 as text
%        str2double(get(hObject,'String')) returns contents of Z1 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Z1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to X1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of X1 as text
%        str2double(get(hObject,'String')) returns contents of X1 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to X1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to theta1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta1 as text
%        str2double(get(hObject,'String')) returns contents of theta1 as a double






function theta2_toolbox_Callback(hObject, eventdata, handles)
% hObject    handle to theta2_toolbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta2_toolbox as text
%        str2double(get(hObject,'String')) returns contents of theta2_toolbox as a double
theta2_toolbox = str2double(get(hObject, 'String'));
if isnan(theta2_toolbox)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new theta2 value
handles.metricdata.theta2_toolbox = theta2_toolbox;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function theta2_toolbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta2_toolbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta3_toolbox_Callback(hObject, eventdata, handles)
% hObject    handle to theta3_toolbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta3_toolbox as text
%        str2double(get(hObject,'String')) returns contents of theta3_toolbox as a double
theta3_toolbox = str2double(get(hObject, 'String'));
if isnan(theta3_toolbox)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new theta2 value
handles.metricdata.theta3_toolbox = theta3_toolbox;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function theta3_toolbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta3_toolbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta1_toolbox_Callback(hObject, eventdata, handles)
% hObject    handle to theta1_toolbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta1_toolbox as text
%        str2double(get(hObject,'String')) returns contents of theta1_toolbox as a double
theta1_toolbox = str2double(get(hObject, 'String'));
if isnan(theta1_toolbox)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new theta2 value
handles.metricdata.theta1_toolbox = theta1_toolbox;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function theta1_toolbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta1_toolbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Y1_toolbox_Callback(hObject, eventdata, handles)
% hObject    handle to Y1_toolbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Y1_toolbox as text
%        str2double(get(hObject,'String')) returns contents of Y1_toolbox as a double
Y1_toolbox = str2double(get(hObject, 'String'));
if isnan(Y1_toolbox)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new theta2 value
handles.metricdata.Y1_toolbox = Y1_toolbox;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function Y1_toolbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Y1_toolbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Z1_toolbox_Callback(hObject, eventdata, handles)
% hObject    handle to Z1_toolbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Z1_toolbox as text
%        str2double(get(hObject,'String')) returns contents of Z1_toolbox as a double
Z1_toolbox = str2double(get(hObject, 'String'));
if isnan(Z1_toolbox)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new theta2 value
handles.metricdata.Z1_toolbox = Z1_toolbox;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function Z1_toolbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Z1_toolbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function X1_toolbox_Callback(hObject, eventdata, handles)
% hObject    handle to X1_toolbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of X1_toolbox as text
%        str2double(get(hObject,'String')) returns contents of X1_toolbox as a double
X1_toolbox = str2double(get(hObject, 'String'));
if isnan(X1_toolbox)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new theta2 value
handles.metricdata.X1_toolbox = X1_toolbox;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function X1_toolbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to X1_toolbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
