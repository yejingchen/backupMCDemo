#!/bin/bash
#
# backupMCDemo 1.0 - backup your Minecraft 1.6 Demo world to your home folder 
# and reset the timer.
# Change $demoworld below if necessary.
#
# Copyright (C) 2013 Ye Jingchen <ye.jingchen@gmail.com>
#
# backupMCDemo is free software: you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option) any later 
# version.
#
# backupMCDemo is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARICULAR PURPOSE. See the GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License along with 
# this program. If not, see <http://www.gnu.org/licenses/>.
#

demoworld=$HOME/.minecraft/saves/Demo_World
#Backup Demo_World
if [ -d $HOME/Demo_World ]
then
	echo \$HOME/Demo_World 已存在，正在删除……
	rm -rf $HOME/Demo_World
	echo 正在将 Demo_World 复制到 \$HOME
	cp -r $demoworld $HOME
else
	echo 正在将 Demo_World 复制到 \$HOME
	cp -r $demoworld $HOME
fi

#Reset the timer
echo 正在重置计时器
rm $demoworld/level* $demoworld/session.lock
echo 完成
