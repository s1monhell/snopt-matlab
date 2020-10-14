 function [Gvec] = snfindG(iGfun, jGvar, Gfull,nRows)
%function [Gvec] = snfindG(iGfun, jGvar, Gfull)
%    Grabs elements in Gfull corresponding to
%    row and column indices (iGfun, jGvar).
%
%    Note: We cannot simply use the Matlab
%    function find(), since it is crucial that
%    the order of Gvec correspond to iGfun,
%    and jGvar.  Furthermore, zero
%    elements in Gfull must not be deleted
%    from Gvec.

Gind = iGfun + (jGvar-1)*nRows;
Gvec = Gfull(Gind);

% Avoid Gvec being stored in sparse format:
Gvec = full(Gvec);
m    = size(Gvec,1);
if m == 1
  Gvec = Gvec';
end
