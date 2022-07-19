.class final Lcom/uc/webview/export/internal/setup/bl;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/bf$a;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/bf$a;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 180
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/bf$a;->f:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    const-string v1, "core_ver_excludes"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/bf$a;->f:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    const-string v2, "sdk_ver_excludes"

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 184
    const/16 v2, 0x1d

    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 185
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/bf$a;->e:Lcom/uc/webview/export/internal/setup/br;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/br;->mSdkShellClassLoader:Ljava/lang/ClassLoader;

    const-string v3, "com.uc.webview.browser.shell.Build"

    const-string v4, "CORE_VERSION"

    const-string v5, "\\^\\^"

    invoke-static {v0, v2, v3, v4, v5}, Lcom/uc/webview/export/internal/setup/g;->a(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/bf$a;->e:Lcom/uc/webview/export/internal/setup/br;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/br;->mSdkShellClassLoader:Ljava/lang/ClassLoader;

    const-string v2, "com.uc.webview.browser.shell.Build$Version"

    const-string v3, "NAME"

    invoke-static {v1, v0, v2, v3, v5}, Lcom/uc/webview/export/internal/setup/g;->a(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/bf$a;->f:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    const-string v1, "scst_flag"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/k;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const-string v0, "sc_taucmv"

    invoke-static {v0}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/bf$a;->e:Lcom/uc/webview/export/internal/setup/br;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/br;->mSdkShellClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1, v2, v3, v5}, Lcom/uc/webview/export/internal/setup/g;->b(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    const/16 v0, 0xd5

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 197
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/bf$a;->e:Lcom/uc/webview/export/internal/setup/br;

    sget-object v1, Lcom/uc/webview/export/internal/setup/af;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/bf$a;->e:Lcom/uc/webview/export/internal/setup/br;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/br;->mSdkShellClassLoader:Ljava/lang/ClassLoader;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/bl;->a:Lcom/uc/webview/export/internal/setup/bf$a;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/bf$a;->f:Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1, v2, v3}, Lcom/uc/webview/export/internal/setup/g;->a(Lcom/uc/webview/export/internal/setup/br;Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 199
    sget v0, Lcom/uc/webview/export/internal/setup/ae$e;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
