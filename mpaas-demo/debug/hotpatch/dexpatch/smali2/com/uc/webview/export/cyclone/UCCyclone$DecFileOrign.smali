.class public Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/cyclone/UCCyclone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecFileOrign"
.end annotation


# static fields
.field public static DecFileOrignFlag:Ljava/lang/String;

.field public static Other:I

.field public static Sdcard:I

.field public static Sdcard_Share_Core:I

.field public static Update:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const/4 v0, 0x1

    sput v0, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->Other:I

    .line 62
    sput v0, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->Update:I

    .line 63
    const/4 v0, 0x2

    sput v0, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->Sdcard:I

    .line 64
    const/4 v0, 0x3

    sput v0, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->Sdcard_Share_Core:I

    .line 65
    const-string v0, "_dec_ori_"

    sput-object v0, Lcom/uc/webview/export/cyclone/UCCyclone$DecFileOrign;->DecFileOrignFlag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
