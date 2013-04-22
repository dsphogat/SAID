function varargout = WORK(varargin)
% WORK M-file for WORK.fig
%      WORK, by itself, creates a new WORK or raises the existing
%      singleton*.
%
%      H = WORK returns the handle to a new WORK or the handle to
%      the existing singleton*.
%
%      WORK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in WORK.M with the given input arguments.
%
%      WORK('Property','Value',...) creates a new WORK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before WORK_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to WORK_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help WORK

% Last Modified by GUIDE v2.5 18-Nov-2011 04:51:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @WORK_OpeningFcn, ...
                   'gui_OutputFcn',  @WORK_OutputFcn, ...
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


% --- Executes just before WORK is made visible.
function WORK_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to WORK (see VARARGIN)
handles.output = hObject;
 set (handles.figure1,'position',get (0,'screensize')); 
% Choose default command line output for WORK

set(handles.fontSelect_buttongroup,'SelectionChangeFcn',@fontSelect_buttongroup_SelectionChangeFcn);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes WORK wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = WORK_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
switch get(eventdata.NewValue,'Tag')   % Get Tag of selected object
    case 'radiobutton1'
        satlimg1
end

function fontSelect_buttongroup_SelectionChangeFcn(hObject, eventdata)

%retrieve GUI data, i.e. the handles structure
handles = guidata(hObject); 

switch get(eventdata.NewValue,'Tag')   % Get Tag of selected object
    case 'radiobutton1'
      %execute this code when fontsize08_radiobutton is selected
         satlimg1
         msgbox('             FILE RGB LOADED              ','SAID','help');
        close(gcbf)
        
    case 'radiobutton2'
      %execute this code when fontsize12_radiobutton is selected
      satlimg   
       msgbox('               FILE HSV LOADED              ','SAID','help');
close(gcbf)
    otherwise
       % Code for when there is no match.

end
%updates the handles structure
% guidata(hObject, handles);
% handles    structure with handles and user data (see GUIDATA)



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% Create a grid of data points
display Goodbye
 close(gcbf)
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when figure1 is resized.


% --- Executes when figure1 is resized.


% --- Executes on button press in pushbutton3.
