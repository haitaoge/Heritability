function [rgb_colorMatrix,labels] = GiveMeColors(colorSet)
% Given a color set setting, gives a set of corresponding colors

switch colorSet
    case 'anatomyType'
        rgb_colorMatrix = [70,114,114;... % Head
            254,43,39;... % Tail
            67,11,74]/255; % Body
        labels = {'head','tail','body'};

    case 'HubNonHub'
        rgb_colorMatrix = [215/225 25/225 28/225; ...
            .96 .54 .04;
            215/225 25/225 28/225; ...
            .96 .54 .04];
        labels = {'hub','nonhub'};

    case 'richFeederPeripheral'
        rgb_colorMatrix = [0 0 0; ...
            .52 .73 .4; ...
            .96 .78 .1; ...
            1 .1 .07];
        labels = {'black','peripheral','feeder','rich'}; % ??
        
     case 'RFPU'
        rgb_colorMatrix = [227 26 28; ...
            254 204 92; ...
            158 202 225; ...
            150 150 150]/255;
        labels = {'rich','feeder','peripheral','unconnected'}; % ??

    case 'ElChemUncon'
        rgb_colorMatrix = [227 26 28; ...
            253 141 60;
            254 204 92;
            150 150 150]/255;
        labels = {'Electrical','Chemical1', 'Chemical2','Unconnected'}; % ??

     case 'mouse'
        rgb_colorMatrix = [49 130 189; ...
            158 202 225;
            150 150 150]/255;
        labels = {'Electrical','Chemical1', 'Chemical2','Unconnected'}; % ??

    case 'richFeedInOutPeripheral'
        rgb_colorMatrix = [0,0,0;...
            215 25 28;
            1*255 .8*255 0; ...
            .97*255 .50*255 0*255;...
            103 169 207 ...
            ]/255;
        % rgb_colorMatrix = [0 0 0; ...
        %                     .52 .73 .4; ...
        %                     .96 .78 .1; ...
        %                     1 .1 .07];
        labels = {'black','rich', 'feedin', 'feedout', 'peripheral'}; % ??
    case 'InterneuronMotorSensoryMulti'
        rgb_colorMatrix = [.98 .3 0;...% interneuron
            0 .62 .38; ...% motor neuron
            .25 .41 .88; ...% sensory neuron
            .93 .9 0];% multimodal neuron
        labels = {'interneuron','motor','sensory','multi'};

    case 'AllDistributions'
        rgb_colorMatrix = [.45 .45 .45;...
            .51 .56 .52;...
            .65 .65 .65; ...
            .79 .75 .73; ...
            103/255 169/255 207/255; ...
            1 .8 0; ...
            .97 .5 0; ...
            1 .15 .07
            ];
    case 'RichNONrich'
        rgb_colorMatrix = [215/225 25/225 28/225; ...
            .02 .56 .2];
        labels = {'hub','nonhub'};
    case 'directedAnatomy'
        rgb_colorMatrix = [70,114,114;... % HeadHead
            202,81,0;... % HeadTail
            5,54,55;... % TailHead
            254,43,39;... % TailTail
            57,151,14;... % BodyHead
            67,11,74;... % BodyBody
            120,140,59;... % BodyTail
            132,56,186;... % HeadBody
            90,49,0]/255; % TailBody
        labels = {'HeadHead','HeadTail','TailHead','TailTail','BodyHead',...
            'BodyBody','BodyTail','HeadBody','TailBody'};
end

end
