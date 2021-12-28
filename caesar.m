function coded=caesar(feed,shift)

%convert the feed into double
feed=double(feed);
%create a copy of feed
sample=feed;
%take the remainder of shift
shift=rem(shift,95);
%the conversion
for ii=1:length(feed)
    if (feed(ii)+shift)>126
        sample(ii)=31+rem(feed(ii)+shift,126);
    elseif (feed(ii)+shift)<32
        sample(ii)=127+(shift+(feed(ii)-32));
    else
        sample(ii)=feed(ii)+shift;
    end
end
%Convert back in char data type
coded=char(sample);
end


    