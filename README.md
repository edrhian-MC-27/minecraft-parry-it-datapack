<h1 id="parry-it-datapack">Parry It Datapack</h1>
<blockquote>
<p>Parry projectiles, creepers and damage!</p>
</blockquote>
<h2 id="introduction">Introduction</h2>
<p>This datapack features a new type of shield that allows the player to parry projectiles, creepers and damage.</p>
<h2 id="installation">Installation</h2>
<ul>
<li>Place the .zip in your world&#39;s datapacks folder</li>
</ul>
<h2 id="usage">Usage</h2>
<ul>
<li><p>If you don&#39;t have the recipe use the <code>/reload</code> command to obtain it</p>
</li>
<li><p>Craft the shield
<img src="docs/images/crafting_recipe.png" alt="Parry Shield Crafting Recipe"></p>
</li>
</ul>
<h2 id="parrying">Parrying</h2>
<ul>
<li><p>Right click it while holding it with your left or right hand to perform a parry</p>
</li>
<li><p>By default, you have a 7 ticks (0.35 seconds) window to perform a parry, if you fail, you will be applied a negative effect and your parry cooldown is increased</p>
</li>
<li><p>If you perform a succesful parry, it will reset your cooldown to 2 ticks</p>
</li>
<li><p>Depending on what do you parry, it will give you different effects</p>
</li>
</ul>
<h3 id="damage-parry">Damage Parry</h3>
<ul>
<li><p>If you are hit while parrying, it blocks the damage and gives you strenght for a few seconds</p>
</li>
<li><p>The mob/player that has hit you be given a slow and nausea effect</p>
</li>
</ul>
<h3 id="projectile-parry">Projectile parry</h3>
<p>There are 3 types of projectiles, each one has a different effect when parried</p>
<ul>
<li><p>Absorbable (Wind Charges and Wither Skulls): Gives the player strenght and speed, and gives slowness to the mob/player that shot the projectile</p>
</li>
<li><p>Deflectable (Arrows, tridents and throwable potions): Changes the direction of the projectile and gives slowness to the mob/player that shot the projectile</p>
</li>
<li><p>Stopable (Fireballs): Stops in the air the projectile (and can be punch again) and gives slowness to the mob/player that shot the projectile</p>
</li>
</ul>
<h3 id="creeper-parry">Creeper Parry</h3>
<ul>
<li>When in a 3 block radius from a creeper that is targeting you, using the shield around 5 ticks (0.25) right before it explodes, it will instantly do 1000 damage to the creeper</li>
</ul>
<h2 id="admin-commands">Admin commands</h2>
<ul>
<li><p>To give yourself a parry shield use the <code>/function parry_it:_sudo/give_shield</code> command</p>
</li>
<li><p>To change the datapack configuration use the <code>/function parry_it:_sudo/open_config</code>, this will open a dialog and it will print out the current configuration in the chat</p>
</li>
</ul>
<h3 id="configuration">Configuration</h3>
<p><img src="docs/images/config_dialog.png" alt="Config UI image"></p>
<ul>
<li><code>/function parry_it:_sudo/reset</code> sets the configuration to the default values</li>
</ul>
<p>There are 4 types of values that can be modified inside the configuration dialog</p>
<blockquote>
<p>Note that all the values are in ticks: 20 ticks =&gt; 1 second</p>
</blockquote>
<ul>
<li><p>Parry Window (7 ticks by default): It&#39;s the time between using the parry and failing it, a lower value requires the player to use it more precisely</p>
</li>
<li><p>Parry Cooldown on Success (2 ticks by default): It&#39;s value of the cooldown after a successful parry, a lower value allows to use it right before a parry</p>
</li>
<li><p>Parry Cooldown on Fail (40 ticks by default): It&#39;s value of the cooldown after a failed parry and the duration of the negative effects, a higher value punishes more the player</p>
</li>
<li><p>Parry Creeper Minimum Fuse Time (25 ticks by default): It&#39;s the creeper fuse time required to parry a creeper successfully, a lower value allows to parry creeper earlier and less risky</p>
</li>
</ul>
<blockquote>
<p>It&#39;s highly recommended to use a higher parry window and lower creeper minimum fuse time in servers, lag can make this datapack very inconsistent</p>
</blockquote>
<h2 id="video">Video</h2>
<p><a href="https://youtu.be/iN_mNzxoTaY">Showcase Video</a></p>
<iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/iN_mNzxoTaY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

<h2 id="compatibility">Compatibility</h2>
<p>This datapack has been tested with minecraft +1.21.8</p>
