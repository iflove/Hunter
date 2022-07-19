.class Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader$1;
.super Ljava/lang/Object;
.source "H5ScriptLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->b(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    .line 365
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader$1;->c:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader$1;->c:Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->loadDynamicJs(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 370
    return-void
.end method
