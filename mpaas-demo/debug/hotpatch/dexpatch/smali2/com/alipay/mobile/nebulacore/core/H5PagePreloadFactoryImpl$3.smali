.class Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$3;
.super Ljava/lang/Object;
.source "H5PagePreloadFactoryImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/util/KeyboardVisibilityListener$KeyboardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;->setUpPage(Lcom/alipay/mobile/nebulacore/ui/H5ViewHolder;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field final synthetic c:Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;Landroid/os/Bundle;Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;

    .line 126
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$3;->c:Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$3;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$3;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardVisible(ZI)V
    .locals 7
    .param p1, "visible"    # Z
    .param p2, "keyboardHeight"    # I

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onKeyboardVisible "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5PagePreloadFactoryImpl"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "keyboardHeight"

    const-string v1, "url"

    const-string v2, ""

    const-string v3, "publicId"

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 132
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$3;->a:Landroid/os/Bundle;

    invoke-static {v5, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "publicId":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$3;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 135
    .local v5, "url":Ljava/lang/String;
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 136
    .local v4, "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v6

    invoke-virtual {v6, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v4, v1, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$3;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v1, "keyboardBecomeVisible"

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 140
    .end local v2    # "publicId":Ljava/lang/String;
    .end local v4    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "url":Ljava/lang/String;
    return-void

    .line 141
    :cond_0
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$3;->a:Landroid/os/Bundle;

    invoke-static {v5, v3, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .restart local v2    # "publicId":Ljava/lang/String;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$3;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 144
    .restart local v5    # "url":Ljava/lang/String;
    new-instance v6, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v6}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 145
    .restart local v4    # "param":Lcom/alibaba/fastjson/JSONObject;
    move-object v4, v6

    invoke-virtual {v6, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {v4, v1, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PagePreloadFactoryImpl$3;->b:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string v1, "keyboardBecomeInvisible"

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 150
    .end local v2    # "publicId":Ljava/lang/String;
    .end local v4    # "param":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "url":Ljava/lang/String;
    return-void
.end method
