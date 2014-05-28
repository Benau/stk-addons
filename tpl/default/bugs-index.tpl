{config_load file="{$smarty.current_dir}/tpl.conf"}
{include file=#header#}
<div id="content-bugs">
    <h1>{t}Bug Tracker{/t}
        <small> {t}for addons{/t}</small>
    </h1>
    <br>

    <div class="row">
        <div class="col-md-10">
            <form class="form-inline center-block" role="form" id="bug-search">
                <div class="form-group">
                    <input type="hidden" name="action" value="search">
                    <input type="text" class="form-control input-lg" id="search-title" name="search-title"
                           placeholder="Enter bug title">
                </div>
                <div class="form-group">
                    <label>
                        <select class="form-control input-lg" name="search-filter">
                            <option value="all" selected>{t}All{/t}</option>
                            <option value="open">{t}Open{/t}</option>
                            <option value="closed">{t}Closed{/t}</option>
                        </select>
                    </label>
                </div>
                <div class="form-group">
                    <label class="checkbox-inline">
                        <input type="checkbox" id="search-description" name="search-description">{t}Search Description{/t}
                    </label>
                </div>
                <button type="submit" class="btn btn-info btn-lg">{t}Search{/t}</button>
            </form>
        </div>
        <div class="col-md-2">
            <button class="btn btn-default btn-lg" id="btn-bugs-add">
                {t}File a bug{/t}
            </button>
            <button class="btn btn-default btn-lg hide" id="btn-bugs-back">
                {t}Back{/t}
            </button>
        </div>
    </div>
    <br><br>
    <div class="alert alert-danger alert-dismissable hide" id="bugs-alert">
        <button type="button" class="close" data-dismiss="alert">&times;</button>
        Oh snap
    </div>
    <div id="alert-container">

    </div>
    <div id="bug-content">
        {$bugs.content}
    </div>
</div>
{include file=#footer#}