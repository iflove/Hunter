.class Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5AppearancePlugin$3;
.super Ljava/lang/Object;
.source "H5AppearancePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5AppearancePlugin;->a(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/h5container/api/H5Page;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

.field final synthetic c:Lcom/alipay/mobile/h5container/api/H5Event;

.field final synthetic d:Z

.field final synthetic e:Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5AppearancePlugin;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5AppearancePlugin;Landroid/view/View;Lcom/alipay/mobile/h5container/api/H5BridgeContext;Lcom/alipay/mobile/h5container/api/H5Event;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5AppearancePlugin;

    .line 197
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5AppearancePlugin$3;->e:Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5AppearancePlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5AppearancePlugin$3;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5AppearancePlugin$3;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iput-object p4, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5AppearancePlugin$3;->c:Lcom/alipay/mobile/h5container/api/H5Event;

    iput-boolean p5, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5AppearancePlugin$3;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5AppearancePlugin$3;->a:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/nebula/R$id;->h5_pc_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;

    const/4 v1, 0x0

    move-object v2, v1

    .line 202
    .local v2, "h5PullContainer":Lcom/alipay/mobile/nebula/refresh/H5PullContainer;
    move-object v2, v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5AppearancePlugin$3;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5AppearancePlugin$3;->c:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 204
    return-void

    .line 206
    :cond_0
    nop

    .line 207
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "h5_ant_loading_view"

    const-string v4, "id"

    const-string v5, "com.alipay.mobile.nebulabiz"

    .line 208
    invoke-static {v0, v3, v4, v5}, Lcom/mpaas/project/aar/convert/converter/ConvertResouceUtils;->getIdentifier(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 207
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/antui/load/AntLoadingView;

    move-object v3, v1

    .line 210
    .local v3, "antLoadingView":Lcom/alipay/mobile/antui/load/AntLoadingView;
    move-object v3, v0

    if-eqz v0, :cond_2

    .line 211
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5AppearancePlugin$3;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "_BLUE"

    goto :goto_0

    :cond_1
    const-string v0, "_WHITE"

    :goto_0
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/antui/load/AntLoadingView;->initAnimation(Ljava/lang/String;)V

    goto :goto_1

    .line 214
    :cond_2
    sget v0, Lcom/alipay/mobile/nebula/R$id;->h5_pullrefresh_title:I

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/nebula/refresh/H5PullContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 215
    .local v1, "h5PullTitle":Landroid/widget/TextView;
    move-object v1, v0

    if-eqz v0, :cond_4

    .line 216
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5AppearancePlugin$3;->d:Z

    if-eqz v0, :cond_3

    .line 217
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/alipay/mobile/nebula/R$color;->h5_provider_text:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 219
    :cond_3
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    .end local v1    # "h5PullTitle":Landroid/widget/TextView;
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5AppearancePlugin$3;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v2    # "h5PullContainer":Lcom/alipay/mobile/nebula/refresh/H5PullContainer;
    .end local v3    # "antLoadingView":Lcom/alipay/mobile/antui/load/AntLoadingView;
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "H5AppearancePlugin"

    const-string/jumbo v2, "set background text style error"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    iget-object v1, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5AppearancePlugin$3;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    iget-object v2, p0, Lcom/alipay/mobile/nebulaappproxy/plugin/ui/H5AppearancePlugin$3;->c:Lcom/alipay/mobile/h5container/api/H5Event;

    sget-object v3, Lcom/alipay/mobile/h5container/api/H5Event$Error;->UNKNOWN_ERROR:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 228
    .end local v0    # "e":Ljava/lang/Exception;
    return-void
.end method
