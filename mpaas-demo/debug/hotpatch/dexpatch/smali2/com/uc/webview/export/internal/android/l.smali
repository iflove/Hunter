.class final Lcom/uc/webview/export/internal/android/l;
.super Lcom/uc/webview/export/WebChromeClient$FileChooserParams;
.source "U4Source"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/uc/webview/export/internal/android/i;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/android/i;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/l;->c:Lcom/uc/webview/export/internal/android/i;

    iput-object p2, p0, Lcom/uc/webview/export/internal/android/l;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/uc/webview/export/internal/android/l;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/uc/webview/export/WebChromeClient$FileChooserParams;-><init>()V

    return-void
.end method


# virtual methods
.method public final createIntent()Landroid/content/Intent;
    .locals 4

    .line 247
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-lt v1, v3, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/android/l;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setTypeAndNormalize(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/android/l;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    :goto_0
    return-object v0
.end method

.method public final getAcceptTypes()[Ljava/lang/String;
    .locals 3

    .line 227
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/l;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "*/*"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/android/l;->a:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final getFilenameHint()Ljava/lang/String;
    .locals 1

    .line 242
    const-string v0, ""

    return-object v0
.end method

.method public final getMode()I
    .locals 1

    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 237
    const-string v0, ""

    return-object v0
.end method

.method public final isCaptureEnabled()Z
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/l;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
