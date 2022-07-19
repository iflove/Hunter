.class final Lcom/uc/webview/export/cyclone/service/UCDexImpl$1;
.super Ljava/lang/Object;
.source "U4Source"

# interfaces
.implements Ljava/io/FilenameFilter;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 82
    if-eqz p2, :cond_0

    .line 83
    # getter for: Lcom/uc/webview/export/cyclone/service/UCDexImpl;->CLASSES_DEX:Ljava/lang/String;
    invoke-static {}, Lcom/uc/webview/export/cyclone/service/UCDexImpl;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 82
    return p1
.end method
