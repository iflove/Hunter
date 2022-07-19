.class public Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "MiniProgramOpenSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$c;,
        Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$e;,
        Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$d;,
        Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$b;,
        Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/antui/dialog/AUProgressDialog;

.field private b:Lcom/alipay/mobile/antui/basic/AUScrollView;

.field private c:Lcom/alipay/mobile/antui/basic/AULinearLayout;

.field private d:Lcom/alipay/mobile/antui/basic/AULinearLayout;

.field private e:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private f:Lcom/alipay/mobile/antui/basic/AUTextView;

.field private g:Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;

.field private h:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

.field private i:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

.field private j:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

.field private k:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

.field private l:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

.field private m:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

.field private n:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

.field private o:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:B

.field private t:Ljava/lang/String;

.field private u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile v:Z

.field private w:Ljava/lang/String;

.field private x:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 112
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->p:Ljava/util/Map;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->q:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->r:Ljava/lang/String;

    .line 125
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->s:B

    .line 135
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->v:Z

    .line 150
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->x:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->l()V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 2
    .param p1, "userAllSettings"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 397
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$e;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$e;-><init>(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 404
    return-void

    .line 398
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->h()V

    .line 399
    const-string v0, "MiniProgramOpenSettingActivity"

    const-string v1, "[showSettingsView] userAllSettings maybe empty."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "authToken"    # Ljava/lang/String;

    .line 304
    if-eqz p1, :cond_0

    .line 305
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$3;-><init>(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 318
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$4;-><init>(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 329
    :goto_0
    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->w:Ljava/lang/String;

    .line 330
    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)Lcom/alipay/mobile/antui/basic/AUScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->b:Lcom/alipay/mobile/antui/basic/AUScrollView;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)Lcom/alipay/mobile/antui/basic/AULinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->d:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    return-object v0
.end method

.method private c()V
    .locals 6

    .line 175
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$id;->scrview_content_panel:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUScrollView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->b:Lcom/alipay/mobile/antui/basic/AUScrollView;

    .line 176
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$id;->layout_main_view_panel:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->d:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    .line 177
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$id;->layout_error_view_panel:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AULinearLayout;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->c:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    .line 178
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$id;->text_error:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->f:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 179
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$id;->text_allow_use_my:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/basic/AUTextView;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->e:Lcom/alipay/mobile/antui/basic/AUTextView;

    .line 180
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$id;->user_info_auth:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->g:Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;

    .line 181
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$id;->setting_user_location:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->h:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    .line 182
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$id;->setting_address:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->i:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    .line 183
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$id;->setting_invoicetitle:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->j:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    .line 184
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$id;->setting_ali_run:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->k:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    .line 185
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$id;->setting_record:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->l:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    .line 186
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$id;->setting_write_photos_album:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->m:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    .line 187
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$id;->setting_camera:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->n:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    .line 188
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$id;->setting_taobao_auth:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->o:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->p:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->h:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    const-string v2, "location"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->p:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->i:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    const-string v2, "address"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->p:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->j:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    const-string v2, "invoiceTitle"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->p:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->k:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    const-string v2, "alirun"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->p:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->l:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    const-string v2, "audioRecord"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->p:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->m:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    const-string v2, "album"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->p:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->n:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    const-string v2, "camera"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->p:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->o:Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    const-string/jumbo v2, "ta_tb_auth"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->g:Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/nebulaappproxy/R$string;->setting_user_info:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->setLeftText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->g:Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$1;-><init>(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 213
    .local v1, "switchListItemEntry":Ljava/util/Map$Entry;
    move-object v1, v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$d;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;

    invoke-direct {v3, p0, v4, v5}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$d;-><init>(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;Ljava/lang/String;Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/antui/tablelist/AUSwitchListItem;->setOnSwitchListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 214
    .end local v1    # "switchListItemEntry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 216
    :cond_0
    const-string v0, "MiniProgramOpenSettingActivity"

    const-string v1, "[initViews] Execution finished."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 4

    .line 250
    const-string v0, "MiniProgramOpenSettingActivity"

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 251
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "user_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->q:Ljava/lang/String;

    .line 252
    const-string v2, "app_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->r:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 253
    :catchall_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[fieldsInit] Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[fieldsInit] user_id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mAppId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method static synthetic e(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->e:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method private e()V
    .locals 5

    const-string v0, "MiniProgramOpenSettingActivity"

    .line 264
    :try_start_0
    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    const/4 v2, 0x0

    .line 265
    .local v2, "taskService":Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    sget-object v3, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->NORMAL:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    new-instance v3, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$b;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$b;-><init>(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;B)V

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 268
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->startLoading()Z

    .line 269
    const-string v1, "[asyncLoadDataAndView] startLoading"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    .end local v2    # "taskService":Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    return-void

    .line 270
    :catchall_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[asyncLoadDataAndView] Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    return-void
.end method

.method static synthetic f(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->g:Lcom/alipay/mobile/antui/tablelist/AUSingleTitleListItem;

    return-object v0
.end method

.method private f()V
    .locals 8

    .line 281
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcServiceUtils;->getRpcService(Ljava/lang/String;)Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;

    move-result-object v2

    move-object v3, v1

    .line 282
    .local v3, "rpcService":Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;
    const-class v4, Lcom/alipay/minicenter/common/service/rpc/api/MiniAppAuthInfoQueryRpcService;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/minicenter/common/service/rpc/api/MiniAppAuthInfoQueryRpcService;

    .line 284
    .local v2, "queryRpcService":Lcom/alipay/minicenter/common/service/rpc/api/MiniAppAuthInfoQueryRpcService;
    new-instance v4, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppAuthInfoQueryRequestPB;

    invoke-direct {v4}, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppAuthInfoQueryRequestPB;-><init>()V

    move-object v5, v1

    .line 285
    .local v5, "requestPB":Lcom/alipay/minicenter/common/service/rpc/request/MiniAppAuthInfoQueryRequestPB;
    move-object v5, v4

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->r:Ljava/lang/String;

    iput-object v6, v4, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppAuthInfoQueryRequestPB;->appId:Ljava/lang/String;

    .line 286
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->q:Ljava/lang/String;

    iput-object v4, v5, Lcom/alipay/minicenter/common/service/rpc/request/MiniAppAuthInfoQueryRequestPB;->userId:Ljava/lang/String;

    .line 288
    invoke-interface {v2, v5}, Lcom/alipay/minicenter/common/service/rpc/api/MiniAppAuthInfoQueryRpcService;->queryAuthInfo(Lcom/alipay/minicenter/common/service/rpc/request/MiniAppAuthInfoQueryRequestPB;)Lcom/alipay/minicenter/common/service/rpc/result/MiniAppAuthInfoQueryResultPB;

    move-result-object v4

    move-object v6, v1

    .line 289
    .local v6, "resultPB":Lcom/alipay/minicenter/common/service/rpc/result/MiniAppAuthInfoQueryResultPB;
    move-object v6, v4

    if-eqz v4, :cond_0

    iget-object v4, v6, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppAuthInfoQueryResultPB;->authorized:Ljava/lang/Boolean;

    if-eqz v4, :cond_0

    iget-object v4, v6, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppAuthInfoQueryResultPB;->authorized:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    const/4 v4, 0x1

    iget-object v7, v6, Lcom/alipay/minicenter/common/service/rpc/result/MiniAppAuthInfoQueryResultPB;->accessToken:Ljava/lang/String;

    invoke-direct {p0, v4, v7}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->a(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .end local v2    # "queryRpcService":Lcom/alipay/minicenter/common/service/rpc/api/MiniAppAuthInfoQueryRpcService;
    .end local v3    # "rpcService":Lcom/alipay/mobile/nebulaappproxy/api/rpc/H5RpcService;
    .end local v5    # "requestPB":Lcom/alipay/minicenter/common/service/rpc/request/MiniAppAuthInfoQueryRequestPB;
    .end local v6    # "resultPB":Lcom/alipay/minicenter/common/service/rpc/result/MiniAppAuthInfoQueryResultPB;
    goto :goto_0

    .line 296
    :catchall_0
    move-exception v2

    .line 297
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadDataAndViewInSubThread...e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiniProgramOpenSettingActivity"

    invoke-static {v4, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->a(ZLjava/lang/String;)V

    .line 300
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_0
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->x:Z

    .line 301
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 4

    .line 371
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->k()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 372
    .local v1, "appName":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$string;->unknown_app_name:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 375
    :cond_0
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$string;->allow_use_my_info:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;

    .line 45
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->v:Z

    return v0
.end method

.method static synthetic h(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->u:Ljava/util/Map;

    return-object v0
.end method

.method private h()V
    .locals 2

    .line 379
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->g()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "subtitle":Ljava/lang/String;
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$5;-><init>(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 388
    return-void
.end method

.method private i()V
    .locals 3

    .line 412
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->k()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "appName":Ljava/lang/String;
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$6;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$6;-><init>(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    .end local v0    # "appName":Ljava/lang/String;
    return-void

    .line 423
    :catchall_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[showNoUseAnyAuthInfo] Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiniProgramOpenSettingActivity"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 426
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method static synthetic i(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->i()V

    return-void
.end method

.method static synthetic j(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)Lcom/alipay/mobile/antui/basic/AUTextView;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->f:Lcom/alipay/mobile/antui/basic/AUTextView;

    return-object v0
.end method

.method private j()V
    .locals 3

    .line 434
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->k()Ljava/lang/String;

    move-result-object v0

    .line 436
    .local v0, "appName":Ljava/lang/String;
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$7;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$7;-><init>(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    .end local v0    # "appName":Ljava/lang/String;
    return-void

    .line 445
    :catchall_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[showErrorView] Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiniProgramOpenSettingActivity"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 448
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method static synthetic k(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)Lcom/alipay/mobile/antui/basic/AULinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->c:Lcom/alipay/mobile/antui/basic/AULinearLayout;

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 2

    .line 563
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->t:Ljava/lang/String;

    return-object v0

    .line 568
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->getAppNameByAppId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->t:Ljava/lang/String;

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[loadDataAndViewInSubThread] appName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiniProgramOpenSettingActivity"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method private l()V
    .locals 1

    .line 577
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$2;-><init>(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->submitTask(Ljava/lang/Runnable;)V

    .line 594
    return-void
.end method

.method static synthetic m(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->x:Z

    return v0
.end method

.method static synthetic n(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;

    .line 45
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->f()V

    return-void
.end method

.method static synthetic o(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->p:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->a:Lcom/alipay/mobile/antui/dialog/AUProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->a:Lcom/alipay/mobile/antui/dialog/AUProgressDialog;

    invoke-virtual {v1}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->a:Lcom/alipay/mobile/antui/dialog/AUProgressDialog;

    .line 241
    return-void

    .line 237
    :catchall_0
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "MiniProgramOpenSettingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[dismissProgress] Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 240
    :catchall_1
    move-exception v1

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->a:Lcom/alipay/mobile/antui/dialog/AUProgressDialog;

    throw v1

    .line 243
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .line 220
    new-instance v0, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->a:Lcom/alipay/mobile/antui/dialog/AUProgressDialog;

    .line 221
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->a:Lcom/alipay/mobile/antui/dialog/AUProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->setProgressVisiable(Z)V

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->a:Lcom/alipay/mobile/antui/dialog/AUProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->a:Lcom/alipay/mobile/antui/dialog/AUProgressDialog;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->setCancelable(Z)V

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->a:Lcom/alipay/mobile/antui/dialog/AUProgressDialog;

    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$c;-><init>(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->a:Lcom/alipay/mobile/antui/dialog/AUProgressDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/antui/dialog/AUProgressDialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    return-void

    .line 228
    :catchall_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[showProgress] Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiniProgramOpenSettingActivity"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method protected final a(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "settingKey"    # Ljava/lang/String;
    .param p2, "isChecked"    # Z

    const-string v0, ", value = "

    const-string v1, "MiniProgramOpenSettingActivity"

    .line 452
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[doAsyncUpdateSettingInSubThread] Start update setting. settingKey = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingServiceFactory;->getSettingServiceService()Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingService;

    move-result-object v2

    const/4 v3, 0x0

    .line 454
    .local v3, "settingServiceService":Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingService;
    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->r:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->q:Ljava/lang/String;

    invoke-interface {v2, v4, v5, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingService;->updateSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[doAsyncUpdateSettingInSubThread] Update setting finished. settingKey = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    .end local v3    # "settingServiceService":Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingService;
    return-void

    .line 456
    :catchall_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[doAsyncUpdateSettingInSubThread] Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 459
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method protected final b()V
    .locals 5

    .line 336
    const-string v0, "[loadDataAndViewInSubThread] stopLoading"

    const-string v1, "MiniProgramOpenSettingActivity"

    const-string v2, "[loadDataAndViewInSubThread] enter"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->f()V

    .line 341
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingServiceFactory;->getSettingServiceService()Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingService;

    move-result-object v2

    .line 342
    .local v2, "settingServiceService":Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingService;
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->r:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->q:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingService;->getAllSettings(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->u:Ljava/util/Map;

    .line 344
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->v:Z

    .line 346
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->u:Ljava/util/Map;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->h()V

    .line 359
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->u:Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->a(Ljava/util/Map;)V

    .line 360
    const-string v3, "[loadDataAndViewInSubThread] showSettingsView."

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    .end local v2    # "settingServiceService":Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingService;
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->stopLoading()Z

    .line 366
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void

    .line 347
    .restart local v2    # "settingServiceService":Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingService;
    :cond_1
    :goto_1
    :try_start_1
    const-string v3, "[loadDataAndViewInSubThread] allSettings maybe empty."

    invoke-static {v1, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->w:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 351
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->stopLoading()Z

    .line 366
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void

    .line 361
    .end local v2    # "settingServiceService":Lcom/alipay/mobile/nebulaappproxy/tinypermission/MiniProgramSettingService;
    :catchall_0
    move-exception v2

    .line 362
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->j()V

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[loadDataAndViewInSubThread#run] showErrorView. exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v2    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 365
    :catchall_1
    move-exception v2

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->stopLoading()Z

    .line 366
    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method protected final b(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "settingKey"    # Ljava/lang/String;
    .param p2, "isChecked"    # Z

    .line 463
    :try_start_0
    const-class v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    const/4 v1, 0x0

    .line 464
    .local v1, "taskService":Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    sget-object v2, Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;->NORMAL:Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->acquireExecutor(Lcom/alipay/mobile/framework/service/common/TaskScheduleService$ScheduleType;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$8;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$8;-><init>(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    nop

    .end local v1    # "taskService":Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    return-void

    .line 474
    :catchall_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[asyncUpdateSetting] settingKey = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", isChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ". Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiniProgramOpenSettingActivity"

    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 477
    .end local v0    # "e":Ljava/lang/Throwable;
    return-void
.end method

.method public finish()V
    .locals 0

    .line 553
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->stopLoading()Z

    .line 554
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->finish()V

    .line 555
    return-void
.end method

.method public onBackPressed()V
    .locals 7

    const-string v0, "MiniProgramOpenSettingActivity"

    .line 519
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onBackPressed()V

    .line 521
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 522
    .local v1, "allSetting":Ljava/util/Map;
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->u:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 523
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 525
    :cond_0
    const-string/jumbo v2, "userInfo"

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->w:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    invoke-static {}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->isMainProcess()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->r:Ljava/lang/String;

    .line 528
    invoke-static {v2}, Lcom/alipay/mobile/liteprocess/LiteProcessApi;->findProcessByAppId(Ljava/lang/String;)Lcom/alipay/mobile/liteprocess/LiteProcess;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 530
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    move-object v4, v3

    .line 531
    .local v4, "bundle":Landroid/os/Bundle;
    move-object v4, v2

    const-string/jumbo v5, "userId"

    iget-object v6, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->q:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const-string v2, "appId"

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->r:Ljava/lang/String;

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/model/SerializableMap;

    invoke-direct {v2}, Lcom/alipay/mobile/nebulaappproxy/model/SerializableMap;-><init>()V

    .line 535
    .local v3, "serializableMap":Lcom/alipay/mobile/nebulaappproxy/model/SerializableMap;
    move-object v3, v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/nebulaappproxy/model/SerializableMap;->setBooleanMap(Ljava/util/Map;)V

    .line 537
    const-string v2, "data"

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onBackPressed..allSetting\uff1a "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->u:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const/4 v2, 0x3

    iget-object v5, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->r:Ljava/lang/String;

    invoke-static {v2, v5, v4}, Lcom/alipay/mobile/nebulaappproxy/ipc/IPCUtils;->sendDataToLiteProcess(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 540
    .end local v3    # "serializableMap":Lcom/alipay/mobile/nebulaappproxy/model/SerializableMap;
    .end local v4    # "bundle":Landroid/os/Bundle;
    goto :goto_1

    .line 542
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->q:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->r:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebulaappproxy/plugin/tinyapp/H5MiniProgramOpenSettingPlugin;->sendOpenSettingResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allSetting\uff1a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    .end local v1    # "allSetting":Ljava/util/Map;
    goto :goto_1

    .line 545
    :catchall_0
    move-exception v1

    .line 546
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[onBackPressed] Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 548
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    const-string v1, "[onBackPressed] Execution finished."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 154
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    sget v0, Lcom/alipay/mobile/nebulaappproxy/R$layout;->layout_mini_program_open_setting_activity:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 157
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->setContentView(Landroid/view/View;)V

    .line 160
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->d()V

    .line 163
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->c()V

    .line 166
    invoke-direct {p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->e()V

    .line 167
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 598
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    .line 600
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->x:Z

    if-eqz v0, :cond_0

    .line 601
    new-instance v0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$a;-><init>(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;B)V

    invoke-static {v0}, Lcom/alipay/mobile/nebulaappproxy/utils/H5TinyAppUtils;->submitTask(Ljava/lang/Runnable;)V

    .line 603
    :cond_0
    return-void
.end method

.method public startLoading()Z
    .locals 4

    .line 481
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->s:B

    .line 483
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$9;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$9;-><init>(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    goto :goto_0

    .line 489
    :catchall_0
    move-exception v1

    .line 490
    .local v1, "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[startLoading] Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MiniProgramOpenSettingActivity"

    invoke-static {v3, v2, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    return v0
.end method

.method public stopLoading()Z
    .locals 6

    .line 498
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-byte v2, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->s:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 511
    iput-byte v1, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->s:B

    .line 499
    return v0

    .line 502
    :cond_0
    :try_start_1
    new-instance v2, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$10;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity$10;-><init>(Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;)V

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
    :goto_0
    iput-byte v1, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->s:B

    .line 512
    goto :goto_1

    .line 508
    :catchall_0
    move-exception v2

    .line 509
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "MiniProgramOpenSettingActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[stopLoading] Exception: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v2    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 513
    :goto_1
    return v0

    .line 511
    :catchall_1
    move-exception v0

    iput-byte v1, p0, Lcom/alipay/mobile/nebulaappproxy/activity/MiniProgramOpenSettingActivity;->s:B

    throw v0
.end method
