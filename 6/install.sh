#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
   	rm -f /root/.gtkrc-2.0
	rm -f /root/.config/Trolltech.conf
	rm -f /root/.config/gtk-3.0/settings.ini
else
	cp root/gtkrc-2.0 /root/.gtkrc-2.0
	if [ ! -d /root/.config ]; then
		mkdir -p /root/.config
	fi
	cp root/Trolltech.conf /root/.config/
	if [ ! -d /root/.config/gtk-3.0 ]; then
		mkdir -p /root/.config/gtk-3.0
	fi
	cp root/settings.ini /root/.config/gtk-3.0/
fi
