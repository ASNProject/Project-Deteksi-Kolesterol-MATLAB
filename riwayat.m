function varargout = riwayat(varargin)
% RIWAYAT MATLAB code for riwayat.fig
%      RIWAYAT, by itself, creates a new RIWAYAT or raises the existing
%      singleton*.
%
%      H = RIWAYAT returns the handle to a new RIWAYAT or the handle to
%      the existing singleton*.
%
%      RIWAYAT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RIWAYAT.M with the given input arguments.
%
%      RIWAYAT('Property','Value',...) creates a new RIWAYAT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before riwayat_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to riwayat_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help riwayat

% Last Modified by GUIDE v2.5 25-Oct-2019 04:05:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @riwayat_OpeningFcn, ...
                   'gui_OutputFcn',  @riwayat_OutputFcn, ...
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


% --- Executes just before riwayat is made visible.
function riwayat_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to riwayat (see VARARGIN)

% Choose default command line output for riwayat
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
movegui(hObject,'center');

% UIWAIT makes riwayat wait for user response (see UIRESUME)
% uiwait(handles.figure1);
filename = 'Book2.xlsx';
[~,~,data] = xlsread(filename);
no_base = (data(:,2));
k = 4;

while k<=numel(no_base)
    nama = data{k,2};
    ttl = data{k,3};
    if isnan(ttl)
        ttl = '';
    end
    jenis_kelamin = data{k,4};
    alamat = data{k,5};
    usia = data{k,6};
    hasil = data{k,7};
    f(k-3,:) = {nama,ttl,jenis_kelamin,alamat,usia,hasil};
    k = k+1;
end
set(handles.uitable1,'Data',data,'ForegroundColor',[0 0 0])

    
% --- Outputs from this function are returned to the command line.
function varargout = riwayat_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
