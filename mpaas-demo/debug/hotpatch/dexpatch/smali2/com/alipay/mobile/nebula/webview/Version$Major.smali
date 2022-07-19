.class public Lcom/alipay/mobile/nebula/webview/Version$Major;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/webview/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Major"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(II)I
    .locals 3
    .param p1, "v1"    # I
    .param p2, "v2"    # I

    .line 30
    invoke-static {p1}, Lcom/alipay/mobile/nebula/webview/Version;->getMajor(I)I

    move-result v0

    .line 31
    .local v0, "v1Major":I
    invoke-static {p2}, Lcom/alipay/mobile/nebula/webview/Version;->getMajor(I)I

    move-result v1

    .line 32
    .local v1, "v2Major":I
    if-ne v0, v1, :cond_0

    .line 33
    const/4 v2, 0x0

    return v2

    .line 34
    :cond_0
    if-le v0, v1, :cond_1

    .line 35
    const/4 v2, 0x1

    return v2

    .line 37
    :cond_1
    const/4 v2, -0x1

    return v2
.end method
