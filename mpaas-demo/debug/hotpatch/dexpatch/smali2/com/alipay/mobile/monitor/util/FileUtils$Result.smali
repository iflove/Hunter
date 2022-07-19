.class public Lcom/alipay/mobile/monitor/util/FileUtils$Result;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/monitor/util/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# static fields
.field public static final ERROR_CODE_EXCEPTION:I = 0x5

.field public static final ERROR_CODE_FILE_NOT_EXIST:I = 0x6

.field public static final ERROR_CODE_INVALID_PATH:I = 0x3

.field public static final ERROR_CODE_IS_DIRECTORY:I = 0x2

.field public static final ERROR_CODE_PARAM_IS_NULL:I = 0x1

.field public static final ERROR_CODE_SYSTEM_ERROR:I = 0x4

.field public static final SUCCESS:I


# instance fields
.field public errCode:I

.field public errMessage:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>(ZILjava/lang/String;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "errCode"    # I
    .param p3, "errMessage"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-boolean p1, p0, Lcom/alipay/mobile/monitor/util/FileUtils$Result;->success:Z

    .line 89
    iput p2, p0, Lcom/alipay/mobile/monitor/util/FileUtils$Result;->errCode:I

    .line 90
    iput-object p3, p0, Lcom/alipay/mobile/monitor/util/FileUtils$Result;->errMessage:Ljava/lang/String;

    .line 91
    return-void
.end method
