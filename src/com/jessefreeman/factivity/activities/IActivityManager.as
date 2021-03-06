/*
 *
 *  Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 *
 *  The above copyright notice and this permission notice shall be included in
 *  all copies or substantial portions of the Software.
 *
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 *  THE SOFTWARE.
 * /
 */

/**
 * Created by IntelliJ IDEA.
 * User: Jesse Freeman
 * Date: 2/23/11
 * Time: 9:14 PM
 * To change this template use File | Settings | File Templates.
 */
package com.jessefreeman.factivity.activities
{
    import com.jessefreeman.factivity.managers.*;
    import com.jessefreeman.factivity.analytics.ITrack;
    import com.jessefreeman.factivity.sounds.ISoundManager;
    import com.jessefreeman.factivity.threads.IThreadManager;

    import flash.display.DisplayObjectContainer;

    public interface IActivityManager
    {
        function get threadManager():IThreadManager;

        function get soundManager():ISoundManager;

        function get tracker():ITrack;

        function set target(value:DisplayObjectContainer):void;

        function setCurrentActivity(activity:Class, data:* = null):void;

        function updateCurrentActivity(elapsed:Number = 0):void;

        function back():void;
    }
}
