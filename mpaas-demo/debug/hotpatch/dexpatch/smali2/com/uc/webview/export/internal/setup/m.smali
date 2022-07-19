.class public Lcom/uc/webview/export/internal/setup/m;
.super Lcom/uc/webview/export/internal/setup/a;
.source "U4Source"


# instance fields
.field c:Ljava/lang/ClassLoader;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/a;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/m;->d:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/m;->e:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/m;->f:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/m;->c:Ljava/lang/ClassLoader;

    .line 28
    const-string v0, "LoadDexJob"

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/m;->a:Ljava/lang/String;

    .line 29
    new-instance v0, Landroid/util/Pair;

    .line 30
    const/16 v1, 0x101

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 31
    const/16 v2, 0x102

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/m;->b:Landroid/util/Pair;

    .line 33
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/m;->d:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/m;->e:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/uc/webview/export/internal/setup/m;->f:Ljava/lang/String;

    .line 37
    iget-object p1, p0, Lcom/uc/webview/export/internal/setup/m;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "<init> dexPath:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/uc/webview/export/internal/setup/m;->d:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", odexPath:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/uc/webview/export/internal/setup/m;->e:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", soDir:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/uc/webview/export/internal/setup/m;->f:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    .line 44
    const-class v0, Lcom/uc/webview/export/internal/setup/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/m;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 47
    const/16 v2, 0x1a

    invoke-static {v2}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 49
    new-instance v2, Lcom/uc/webview/export/cyclone/UCLoader;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/m;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/m;->f:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/uc/webview/export/cyclone/UCLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/m;->c:Ljava/lang/ClassLoader;

    .line 52
    const/16 v0, 0x1b

    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/startup/b;->a(I)V

    .line 53
    return-void
.end method
