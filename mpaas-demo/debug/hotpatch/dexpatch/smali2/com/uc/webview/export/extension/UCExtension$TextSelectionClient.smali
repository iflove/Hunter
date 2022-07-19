.class public Lcom/uc/webview/export/extension/UCExtension$TextSelectionClient;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/extension/UCExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextSelectionClient"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchClicked(Ljava/lang/String;)Z
    .locals 0

    .line 161
    const/4 p1, 0x0

    return p1
.end method

.method public onShareClicked(Ljava/lang/String;)Z
    .locals 0

    .line 171
    const/4 p1, 0x0

    return p1
.end method

.method public shouldShowSearchItem()Z
    .locals 1

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public shouldShowShareItem()Z
    .locals 1

    .line 151
    const/4 v0, 0x1

    return v0
.end method
