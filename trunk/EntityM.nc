//$Id: EntityM.nc,v 1.1.1.1 2008-06-11 20:33:09 pruet Exp $

/*Copyright (c) 2008 University of Massachusetts, Boston 
All rights reserved. 
Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are
met:

	Redistributions of source code must retain the above copyright
notice, this list of conditions and the following disclaimer.
	Redistributions in binary form must reproduce the above copyright
notice, this list of conditions and the following disclaimer in the
documentation and/or other materials provided with the distribution.
    Neither the name of the University of Massachusetts, Boston  nor 
the names of its contributors may be used to endorse or promote products 
derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE UNIVERSITY OF
MASSACHUSETTS, BOSTON OR ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES 
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR 
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) 
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, 
STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING 
IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
POSSIBILITY OF SUCH DAMAGE.
*/

//This file is generated from IDL. please use it as the skelton file for your module
//Ancestors List:
module EntityM {
	provides {
		 interface StdControl;
		 interface Entity;
	}
}
implementation {
	command result_t StdControl.init ()
	{
		debug("EntityM:init");
		return SUCCESS;
	}

	command result_t StdControl.start ()
	{
		debug("EntityM:start");
		return SUCCESS;
	}

	command result_t StdControl.stop ()
	{
		debug("EntityM:stop");
		return SUCCESS;
	}

	command ReturnCode_t Entity.enable ()
	{
		debug("EntityM:enable");
		return NOT_IMPLEMENTED_YET;
	}

	command StatusCondition_t Entity.get_statuscondition ()
	{
		debug("EntityM:get_statuscondition");
		return NOT_IMPLEMENTED_YET;
	}

	command StatusKindMask Entity.get_status_changes ()
	{
		debug("EntityM:get_status_changes");
		return NOT_IMPLEMENTED_YET;
	}

}
