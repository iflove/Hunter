.class public Lcom/uc/webview/export/Build;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/Build$Version;
    }
.end annotation


# static fields
.field public static CORE_TIME:Ljava/lang/String;

.field public static CORE_VERSION:Ljava/lang/String;

.field public static CPU_ARCH:Ljava/lang/String;

.field public static IS_INTERNATIONAL_VERSION:Z

.field public static PACK_TYPE:I

.field public static SDK_BMODE:Ljava/lang/String;

.field public static SDK_BTYPE:Ljava/lang/String;

.field public static SDK_FR:Ljava/lang/String;

.field public static SDK_LANG:Ljava/lang/String;

.field public static SDK_PRD:Ljava/lang/String;

.field public static SDK_PROFILE_ID:Ljava/lang/String;

.field public static SDK_SUBVER:Ljava/lang/String;

.field public static TIME:Ljava/lang/String;

.field public static TYPE:Ljava/lang/String;

.field public static UCM_SUPPORT_SDK_MIN:Ljava/lang/String;

.field public static UCM_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 45
    const-string v0, "200825145737"

    sput-object v0, Lcom/uc/webview/export/Build;->TIME:Ljava/lang/String;

    .line 51
    const-string v1, "@WEBVIEW_SDK_TYPE@"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uc/webview/export/Build;->TYPE:Ljava/lang/String;

    .line 57
    nop

    .line 1030
    const-string v1, "@USE_KERNEL_TYPE@"

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1031
    const/4 v1, 0x4

    goto :goto_0

    .line 1033
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 57
    :goto_0
    sput v1, Lcom/uc/webview/export/Build;->PACK_TYPE:I

    .line 63
    const/4 v1, 0x0

    sput-boolean v1, Lcom/uc/webview/export/Build;->IS_INTERNATIONAL_VERSION:Z

    .line 70
    const-string v1, "@WEBVIEW_SDK_UCM_VERSION@"

    invoke-static {v1, v2}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uc/webview/export/Build;->UCM_VERSION:Ljava/lang/String;

    .line 77
    sput-object v2, Lcom/uc/webview/export/Build;->UCM_SUPPORT_SDK_MIN:Ljava/lang/String;

    .line 84
    const-string v1, "4.0.0.1"

    sput-object v1, Lcom/uc/webview/export/Build;->CORE_VERSION:Ljava/lang/String;

    .line 90
    sput-object v0, Lcom/uc/webview/export/Build;->CORE_TIME:Ljava/lang/String;

    .line 97
    const-string v0, "@CPU_ARCH@"

    const-string v1, "armv7-a"

    invoke-static {v0, v1}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->CPU_ARCH:Ljava/lang/String;

    .line 102
    const-string v0, "@WEBVIEW_SDK_SUBVER@"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->SDK_SUBVER:Ljava/lang/String;

    .line 107
    const-string v0, "@WEBVIEW_SDK_FR@"

    const-string v1, "android"

    invoke-static {v0, v1}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->SDK_FR:Ljava/lang/String;

    .line 112
    const-string v0, "@WEBVIEW_SDK_BTYPE@"

    const-string v1, "UC"

    invoke-static {v0, v1}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->SDK_BTYPE:Ljava/lang/String;

    .line 117
    const-string v0, "@WEBVIEW_SDK_BMODE@"

    const-string v1, "WWW"

    invoke-static {v0, v1}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->SDK_BMODE:Ljava/lang/String;

    .line 122
    const-string v0, "@WEBVIEW_SDK_PRD@"

    const-string v1, "uc_webview_pro"

    invoke-static {v0, v1}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->SDK_PRD:Ljava/lang/String;

    .line 127
    const-string v0, "@WEBVIEW_SDK_PFID@"

    invoke-static {v0, v2}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->SDK_PROFILE_ID:Ljava/lang/String;

    .line 132
    const-string v0, "@WEBVIEW_SDK_LANG@"

    const-string v1, "zh-CN"

    invoke-static {v0, v1}, Lcom/uc/webview/export/Build;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->SDK_LANG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    return-object p1

    .line 39
    :cond_0
    return-object p0
.end method
