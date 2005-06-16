--
--  Copyright (C) 2005 Cognovis
--
--  This file is part of dotLRN.
--
--  dotLRN is free software; you can redistribute it and/or modify it under the
--  terms of the GNU General Public License as published by the Free Software
--  Foundation; either version 2 of the License, or (at your option) any later
--  version.
--
--  dotLRN is distributed in the hope that it will be useful, but WITHOUT ANY
--  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
--  FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
--  details.
--

-- The dotlrn-contacts applet's implimentation of the dotlrn applet contract
--
-- 
--
-- $Id: dotlrn-contacts-create.sql
--

create function inline_0()
returns integer as '
declare
	foo integer;
begin
	-- create the implementation
	foo := acs_sc_impl__new (
		''dotlrn_applet'',
		''dotlrn_contacts'',
		''dotlrn_contacts''
	);

	-- GetPrettyName
	foo := acs_sc_impl_alias__new (
	       ''dotlrn_applet'',
	       ''dotlrn_contacts'',
	       ''GetPrettyName'',
	       ''dotlrn_contacts::get_pretty_name'',
	       ''TCL''
	);

	-- AddApplet
	foo := acs_sc_impl_alias__new (
	       ''dotlrn_applet'',
	       ''dotlrn_contacts'',
	       ''AddApplet'',
	       ''dotlrn_contacts::add_applet'',
	       ''TCL''
	);

	-- RemoveApplet
	foo := acs_sc_impl_alias__new (
	       ''dotlrn_applet'',
	       ''dotlrn_contacts'',
	       ''RemoveApplet'',
	       ''dotlrn_contacts::remove_applet'',
	       ''TCL''
	);

	-- AddAppletToCommunity
	foo := acs_sc_impl_alias__new (
	       ''dotlrn_applet'',
	       ''dotlrn_contacts'',
	       ''AddAppletToCommunity'',
	       ''dotlrn_contacts::add_applet_to_community'',
	       ''TCL''
	);

	-- RemoveAppletFromCommunity
	foo := acs_sc_impl_alias__new (
	       ''dotlrn_applet'',
	       ''dotlrn_contacts'',
	       ''RemoveAppletFromCommunity'',
	       ''dotlrn_contacts::remove_applet_from_community'',
	       ''TCL''
	);

	-- AddUser
	foo := acs_sc_impl_alias__new (
	       ''dotlrn_applet'',
	       ''dotlrn_contacts'',
	       ''AddUser'',
	       ''dotlrn_contacts::add_user'',
	       ''TCL''
	);

	-- RemoveUser
	foo := acs_sc_impl_alias__new (
	       ''dotlrn_applet'',
	       ''dotlrn_contacts'',
	       ''RemoveUser'',
	       ''dotlrn_contacts::remove_user'',
	       ''TCL''
	);

	-- AddUserToCommunity
	foo := acs_sc_impl_alias__new (
	       ''dotlrn_applet'',
	       ''dotlrn_contacts'',
	       ''AddUserToCommunity'',
	       ''dotlrn_contacts::add_user_to_community'',
	       ''TCL''
	);

	-- RemoveUserFromCommunity
	foo := acs_sc_impl_alias__new (
	       ''dotlrn_applet'',
	       ''dotlrn_contacts'',
	       ''RemoveUserFromCommunity'',
	       ''dotlrn_contacts::remove_user_from_community'',
	       ''TCL''
	);

    -- AddPortlet
    foo := acs_sc_impl_alias__new (
        ''dotlrn_applet'',
        ''dotlrn_contacts'',
        ''AddPortlet'',
        ''dotlrn_contacts::add_portlet'',
        ''TCL''
    );

    -- RemovePortlet
    foo := acs_sc_impl_alias__new (
        ''dotlrn_applet'',
        ''dotlrn_contacts'',
        ''RemovePortlet'',
        ''dotlrn_contacts::remove_portlet'',
        ''TCL''
    );

    -- Clone
    foo := acs_sc_impl_alias__new (
        ''dotlrn_applet'',
        ''dotlrn_contacts'',
        ''Clone'',
        ''dotlrn_contacts::clone'',
        ''TCL''
    );

    foo := acs_sc_impl_alias__new (
        ''dotlrn_applet'',
        ''dotlrn_contacts'',
        ''ChangeEventHandler'',
        ''dotlrn_contacts::change_event_handler'',
        ''TCL''
    );

	-- Add the binding
	perform acs_sc_binding__new (
	    ''dotlrn_applet'',
	    ''dotlrn_contacts''
	);

	return 0;

end;' language 'plpgsql';
select inline_0();
drop function inline_0();
