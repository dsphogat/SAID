function varargout = satlimg1(varargin)
global n1;
global n2;
% SATLIMG1 M-file for satlimg1.fig
%      SATLIMG1, by itself, creates a new SATLIMG1 or raises the existing
%      singleton*.
%
%      H = SATLIMG1 returns the handle to a new SATLIMG1 or the handle to
%      the existing singleton*.
%
%      SATLIMG1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SATLIMG1.M with the given input arguments.
%
%      SATLIMG1('Property','Value',...) creates a new SATLIMG1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before satlimg_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to satlimg1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help satlimg1

% Last Modified by GUIDE v2.5 15-May-2012 19:25:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @satlimg1_OpeningFcn, ...
                   'gui_OutputFcn',  @satlimg1_OutputFcn, ...
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


% --- Executes just before satlimg1 is made visible.
function satlimg1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to satlimg1 (see VARARGIN)

% Choose default command line output for satlimg1
handles.output = hObject;
global prev;
global mat;
global coun;
global n1;
global n2;
global n3;
prev=0;
coun=[];
n1=[];
n2=[];
n3=[];
mat=[];
set (handles.figure1,'position',get (0,'screensize')); 
% Update handles structure
set(hObject,'toolbar','figure');
guidata(hObject, handles);

% UIWAIT makes satlimg1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = satlimg1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% edit1.visible=on;
% h = msgbox('text is');
% ah = get( h, 'CurrentAxes' );
% ch = get( ah, 'Children' );
% set( ch, 'FontSize', 20 );

fontName = 'FixedWidth';
fontSize = 12;
msgHandle=msgbox('UPLOAD THE IMAGES FOR EACH YEAR IN THE INCREASING ORDER IN               UPLOAD 1 THEN UPLOAD 2 AND THEN UPLOAD 3  ','SAID','help');
% get handles to the UIControls ([OK] PushButton) and Text
kids0 = findobj( msgHandle, 'Type', 'UIControl' );
kids1 = findobj( msgHandle, 'Type', 'Text' );

% change the font and fontsize
extent0 = get( kids1, 'Extent' ); % text extent in old font
set( [kids0, kids1], 'FontName', fontName, 'FontSize', fontSize );
extent1 = get( kids1, 'Extent' ); % text extent in new font

% need to resize the msgbox object to accommodate new FontName
% and FontSize
delta = extent1 - extent0; % change in extent
pos = get( msgHandle, 'Position' ); % msgbox current position
pos = pos + delta; % change size of msgbox
set( msgHandle, 'Position', pos ); % set new position
% set(handles.edit1,'String','UPLOAD THE IMAGES FOR EACH YEAR ACCORDING TO THE INCREASING YEAR IN UPLOAD 1 THEN UPLOAD 2 AND THEN UPLOAD 3');
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
fontName = 'FixedWidth';
fontSize = 16;
msgHandle=msgbox('INDIVIDUAL PLOTS--->  They describe the amount of forested area and deforested as shown for each image after analyzing them individually.  GROUP PLOTS--->  It describes the amount of deforested area vs Time elapsed as shown in the images                                                  FUTURE PLOTS--->  It describes the future probability of deforestation for next 15 years depicted using three plots with 5 year gap in between them                         SCATTER PLOTS---->A scatter plot or scattergraph is a type of mathematical diagram using Cartesian coordinates to display values for HSV variables for Image data.','SAID','help');
% get handles to the UIControls ([OK] PushButton) and Text
kids0 = findobj( msgHandle, 'Type', 'UIControl' );
kids1 = findobj( msgHandle, 'Type', 'Text' );

% change the font and fontsize
extent0 = get( kids1, 'Extent' ); % text extent in old font
set( [kids0, kids1], 'FontName', fontName, 'FontSize', fontSize );
extent1 = get( kids1, 'Extent' ); % text extent in new font

% need to resize the msgbox object to accommodate new FontName
% and FontSize
delta = extent1 - extent0; % change in extent
pos = get( msgHandle, 'Position' ); % msgbox current position
pos = pos + delta; % change size of msgbox
set( msgHandle, 'Position', pos ); % set new position
% set(handles.edit1,'String','INDIVIDUAL PLOTS--->  They describe the amount of forested area and deforested are shown in each image after analyzing them individually.  GROUP PLOTS--->  It describes the amount of deforested area vs Time elapsed as shown in the images  FUTURE PLOTS--->  It describes the future probability of deforestation uptil the time period mentioned by the user.');
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% k='This deforestation tracking system SAID should provide a solution to the Deforestation problem which is the seventh Millennium Development Goal of UN. This system delivers essential information to people in forest conservation of each country through satellite image comparisons. It facilitates its uses to track deforestation through satellite image processing and also the software is equipped with tools to analyze data and provide critical information needed to combat deforestation. The software is also capable of delivering future deforestation probabilities based on previous deforestation patterns.';
fontName = 'FixedWidth';
fontSize = 18;
msgHandle=msgbox('This deforestation tracking system SAID should provide a solution to the Deforestation problem which is the seventh Millennium Development Goal of UN.                                                                                            This system delivers essential information to people in forest conservation of each country through satellite image comparisons.              It facilitates its uses to track deforestation through satellite image processing and also the software is equipped with tools to analyze data and provide critical information needed to combat deforestation.                The software is also capable of delivering future deforestation probabilities based on previous and present deforestation patterns.','SAID','help');
% get handles to the UIControls ([OK] PushButton) and Text
kids0 = findobj( msgHandle, 'Type', 'UIControl' );
kids1 = findobj( msgHandle, 'Type', 'Text' );

% change the font and fontsize
extent0 = get( kids1, 'Extent' ); % text extent in old font
set( [kids0, kids1], 'FontName', fontName, 'FontSize', fontSize );
extent1 = get( kids1, 'Extent' ); % text extent in new font

% need to resize the msgbox object to accommodate new FontName
% and FontSize
delta = extent1 - extent0; % change in extent
pos = get( msgHandle, 'Position' ); % msgbox current position
pos = pos + delta; % change size of msgbox
set( msgHandle, 'Position', pos ); % set new position
% set(handles.edit1,'String',k);
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.


function [Image2,c] = fu(Image1)
nn1=1;
nn2=2;
nn3=3;
global x;
global tot;
[row column page] = size(Image1)
tot = row*column;
for i = 1:row
for j = 1:column
if (Image1 (i, j, 2) > Image1(i, j, 1) & Image1(i, j, 2) > Image1(i, j, 3))
Image2 (i, j, 1) = Image1 (i, j, 1);
Image2 (i, j, 2) = Image1 (i, j, 2);
Image2 (i, j, 3) = Image1 (i, j, 3);
else
Image2 (i, j, 1) = 0;
Image2 (i, j, 2) = 0;
Image2 (i, j, 3) = 0;
end
end
end
for i = 1:row
for j = 1:column
Green = Image1 (i, j, 2)  + 0.06;
if (Green > Image1(i, j, 1) & Green > Image1(i, j, 3))
Image2 (i, j, 1) = Image1 (i, j, 1);
Image2 (i, j, 2) = Image1 (i, j, 2);
Image2 (i, j, 3) = Image1 (i, j, 3);
else
Image2 (i, j, 1) = 0;
Image2 (i, j, 2) = 0;
Image2 (i, j, 3) = 0;
end
end
end
for i = row
for j = column
if Image2 (i, j, 1) > 150
if Image2 (i, j, 2) > 150
if Image2 (i, j, 3) > 150
Image2 (i, j, 1) = 0.0;
Image2 (i, j, 2) = 0.0;
Image2 (i, j, 3) = 0.0;
end
end
end
end
end
c=0;
for i = 1:row
for j = 1:column
if (Image2(i,j,1)==0 & Image2(i,j,2)==0 & Image2(i,j,3)==0)
    c=c+1;
end
end
end





% --- Executes on button press in plot1_pushbutton.
function plot1_pushbutton_Callback(hObject, eventdata, handles)
global n1;
global n2;
global n3;
global tot;
global b1;
global b2;
global b3;
global x;
% hObject    handle to plot1_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%selects axes1 as the current axes, so that
%Matlab knows where to plot the data
%creates a vector from 0 to 10, [0 1 2 3 . . . 10]
%if(n1==0 || n2==0 || n3==0 || n4==0) x=[year1 year2 year3] 
a1 = get(handles.edit3,'String');
a2 = get(handles.edit4,'String');
a3 = get(handles.edit5,'String');
b1=str2num(a1);
b2=str2num(a2);
b3=str2num(a3);
if(isempty(b1) || isempty(b2) || isempty(b3))
    uiwait(msgbox('ENTER THE YEAR OF EACH UPLOADED IMAGE IN THE TEXT BOX ABOVE ANDTHE YEAR SHOULD BE IN INTEGER FORMAT  ','SAID','error'));
elseif(size(a1)~= 4 | size(a2)~= 4 | size(a3)~= 4)
    uiwait(msgbox('ENTER THE CORRECT YEAR  ','SAID','error'));
elseif(isempty(n1) || isempty(n2) || isempty(n3))
    uiwait(msgbox('FIRST UPLOAD ALL THE THREE IMAGES  ','SAID','error'));
else
x = [b1 b2 b3];
c1=n1/tot;
c1=c1*100;
c2=n2/tot;
c2=c2*100;
c3=n3/tot;
c3=c3*100;
%creates a vector from 0 to 10, [0 1 2 3 . . . 10]
y=[c1 c2 c3];
%plots the x and y data
figure;bar(x,y);
%adds a title, x-axis description, and y-axis description
title('GROUP PLOT');
xlabel('Time Period (in years)');
ylabel('Amount Of Deforestation (in %)');
end
guidata(hObject, handles);
%updates the handles


function [Image3] = fu1(Image1)
hsvImage = rgb2hsv(Image1);  %# Convert the image to HSV space
%hsvImage(:,:,2) = hsvImage(:,:,2)*1.25;
hsvImage(:,:,3) = hsvImage(:,:,3)*1.25; %# Maximize the saturation
Image3 = hsv2rgb(hsvImage);



function plot2_pushbutton_Callback(hObject, eventdata, handles)
global n1;
global n2;
global n3;
global tot;

global prev;
% axes(handles.axes2);
% hObject    handle to plot1_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%selects axes1 as the current axes, so that
%Matlab knows where to plot the data
%creates a vector from 0 to 10, [0 1 2 3 . . . 10]
%if(n1==0 || n2==0 || n3==0 || n4==0) x=[year1 year2 year3] 
x = [0 1];
if(isempty(prev) |prev ==0)
     uiwait(msgbox('PLEASE UPLOAD THE IMAGE FIRST ','SAID','error'));
else
    if(prev==1)
     nc=n1;
elseif(prev==2)
    nc=n2;
elseif(prev==3)
    nc=n3;
end
%creates a vector from 0 to 10, [0 1 2 3 . . . 10]
z=tot-nc;
y=[z nc];
%plots the x and y data
pie(y, {'forested', 'deforested'});
%adds a title, x-axis description, and y-axis description
title('Axes 1');
xlabel('0-> forested area 1 -> deforested area');
ylabel('Amount Of Deforestation');
end
guidata(hObject, handles);

function plot3_pushbutton_Callback(hObject, eventdata, handles)
global n1;
global n2;
global n3;
global b1;
global b2;
global b3;
global tot;
%global n4;
% hObject    handle to plot1_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%selects axes1 as the current axes, so that
%Matlab knows where to plot the data
%creates a vector from 0 to 10, [0 1 2 3 . . . 10]
%if(n1==0 || n2==0 || n3==0 || n4==0) x=[year1 year2 year3]
if(isempty(n1) || isempty(n2) || isempty(n3))
    uiwait(msgbox('FIRST UPLOAD ALL THE THREE IMAGES  ','SAID','error'));
else
u=n2-n1;
v=n3-n2;
if(isempty(b1) || isempty(b2) || isempty(b3))
    uiwait(msgbox('ENTER THE YEAR OF EACH UPLOADED IMAGE IN THE TEXT BOX ABOVE ANDTHE YEAR SHOULD BE IN INTEGER FORMAT  ','SAID','error'));
else
b4= b3 + 5;
b5 = b4  + 5;
b6 = b5 + 5;
x = [b1 b2 b3 b4 b5 b6];
diff=v-u;
diff=diff/u;
dd=n3;
y=[n1 n2 n3];
for i=1:3
    v=v+v*diff;
    na=dd+v;
    dd=na;
    y=[y na];
end
y
%creates a vector from 0 to 10, [0 1 2 3 . . . 10]
%plots the x and y data
figure;bar(x,y);
%adds a title, x-axis description, and y-axis description
title('Axes 1');
xlabel('Time period (in years)');
ylabel('Amount Of Deforestation (in number of pixels)');
end
end
guidata(hObject, handles);

% --- Executes on button press in plot2_pushbutton.


% --- Executes on button press in clear_puchbutton.
function clear_puchbutton_Callback(hObject, eventdata, handles)
global prev;
global n1;
global n2;
global n3;
% hObject    handle to clear_puchbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%these two lines of code clears both axes
 cla(handles.axes2,'reset')
cla(handles.axes3,'reset')
set(handles.axes2,'Visible','off');
set(handles.axes3,'Visible','off');
prev=0;
n1=[];
n2=[];
n3=[];
guidata(hObject, handles); %updates the handles



% --- Executes on button press in upload1_pushbutton.
function upload1_pushbutton_Callback(hObject, eventdata, handles)
global n1;
global prev;
prev=0;
global K;
k9=0;

% hObject    handle to upload1_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, foldername] = uigetfile({'*.*'}, 'Select file');
if filename ~= 0
    prev=1;
FileName = fullfile(foldername, filename);
F = imread (FileName);
axes(handles.axes3);
imshow(F);
axes(handles.axes2);
[FF]=fu1(F);
[K,c]=fu (FF);
imshow(K);
n1=c;
end 



% --- Executes on button press in upload2_pushbutton.
function upload2_pushbutton_Callback(hObject, eventdata, handles)
global n2;
global K;
global prev;
prev=0;
% hObject    handle to upload2_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
k9=0;
[filename1, foldername1] = uigetfile({'*.*'}, 'Select file');
if filename1 ~= 0
    prev=2;
FileName1 = fullfile(foldername1, filename1);
F1 = imread (FileName1);
axes(handles.axes3);
imshow(F1);
axes(handles.axes2);
[FF1]=fu1(F1);
[K,c]=fu (FF1);
imshow(K);
n2=c;
end  


% --- Executes on button press in exit_pushbutton.
function exit_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to exit_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
display Goodbye
close(gcbf)


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
global n3;
global K;
k9=0;
global prev;
prev=0;
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename2, foldername2] = uigetfile({'*.*'}, 'Select file');
if filename2 ~= 0
    prev=3;
FileName2 = fullfile(foldername2, filename2);
F = imread (FileName2);
axes(handles.axes3);
imshow(F);
axes(handles.axes2);
[FF]=fu1(F);
[K,c]=fu (FF);
imshow(K);
n3=c;
end


% --- Executes on button press in pushbutton16.



% --- Executes on button press in plot3_pushbutton.



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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in plot55_pushbutton.
function plot55_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to plot55_pushbutton (see GCBO)
global K;
global prev;
%plotmatrix(K);
%[row1 column1 page1] = size(K);
%x1=zeros(row1,column1);
%P=peaks(K);
%C=del2(P);
if(isempty(K) | prev==0 | prev==-1)
uiwait(msgbox('PLEASE UPLOAD AN IMAGE FIRST  ','SAID','error'));
else
r = K(:,:,1);
g = K(:,:,2);
b = K(:,:,3);
figure
plot3(r(:),g(:),b(:),'.')
grid('on')
xlabel('Red (Band 3)')
ylabel('Green (Band 2)')
zlabel('Blue (Band 1)')
title('Scatterplot of the Visible Bands')
end
%mesh(double(K(:,:,3)));
%tot1 = row1*column1;
%for i = 1:row1
%for j = 1:column1
%if K (i, j, 1) == 0 && K (i, j, 2) == 0 && K (i, j, 3) == 0
%x1=[x1 i];
%y1=[y1 j];
%end
%end
%end
%scatter(x1,y1);
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in plot55_pushbutton.


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
close(gcbf)
WORK()

% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global n1;
global n2;
global n3;
global tot;
fontName = 'FixedWidth';
fontSize = 12;
global prev;
if(isempty(prev) |prev ==0)
     uiwait(msgbox('OOPS!!! YOU DID SOMETHING WORNG                                                  YOU DID NOT UPLOAD THE IMAGE ','SAID','error'));
else
    if(prev==1)
     nc=n1;
elseif(prev==2)
    nc=n2;
elseif(prev==3)
    nc=n3;
    end
    per=nc/tot;
    per=per*100;
    if per>=0 && per<=5
    msgHandle=msgbox('After processing the Image given by you we have come to the conclusion                              Deforestation Level is the least. So start by Planting trees and begin doing this now. Trees give off oxygen that is essential for human existence and they, in turn, capture the carbon dioxide that humans and animals exhale. Trees also help in containing water in its roots. With this simple act, you are able to prevent soil erosion, which is the root cause of landslides','SAID','help');
    elseif per>5 && per<=10
        msgHandle=msgbox('After processing the Image given by you we have come to the conclusion                              Deforestation Level is low. Join environmental awareness groups that would help you be an advocate of reforestation. In Washington, specifically in the Washington Middle School, there was a group of students that established a service-learning project. In their project, they asked a penny from each person. They explained that this money would help in buying acres of the rainforest in Amazon. Once this pushes through, no deforestation could take place in that purchased area.','SAID','help');
    elseif per>10 & per<=20
        msgHandle=msgbox('After processing the Image given by you we have come to the conclusion                              Deforestation Level is moderate. Support the laws or programs that were made to protect the forests and to stop any form of deforestation. Programs such as the Tropical Forestry Action Plan have done a major difference on the way deforestation is looked at today. This program spearheaded the discussion of tropical deforestation.  It is imperative to know that there is no such thing as a small, insignificant act when it comes to defeating deforestation. No matter how small your deed maybe, the important thing there is every act can make a difference. Deforestation can be prevented and you can be an active force in achieving that. ', 'SAID','help');
    elseif per>20 & per<=30
        msgHandle=msgbox('After processing the Image given by you we have come to the conclusion                              Deforestation Level is high.  One solution could theoretically lie in the rapid dissemination of a type of intensive agriculture in certain countries or regions – notwithstanding numerous problematic consequences, for example geographical specialisation implying a restrictive approach to the conservation of natural resources for the developing world ','SAID','help');
    else
        msgHandle=msgbox('After processing the Image given by you we have come to the conclusion                               Deforestation Level is at its extreme. REDD activities are undertaken by national or local governments, dominant NGOs, the private sector, or any combination of these. It is being pushed strongly by the World Bank and the UN for setting up the bases for the carbon market and the legal and governance frameworks of countries receiving REDD. More Such programs need to be organised the forest are may soon fade away','SAID','help');
    end
    kids0 = findobj( msgHandle, 'Type', 'UIControl' );
kids1 = findobj( msgHandle, 'Type', 'Text' );

% change the font and fontsize
extent0 = get( kids1, 'Extent' ); % text extent in old font
set( [kids0, kids1], 'FontName', fontName, 'FontSize', fontSize );
extent1 = get( kids1, 'Extent' ); % text extent in new font

% need to resize the msgbox object to accommodate new FontName
% and FontSize
delta = extent1 - extent0; % change in extent
pos = get( msgHandle, 'Position' ); % msgbox current position
pos = pos + delta; % change size of msgbox
set( msgHandle, 'Position', pos );
end


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
