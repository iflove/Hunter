.class Lcom/alipay/dexpatch/m/DexPatchLogger$LogInfo;
.super Ljava/lang/Object;
.source "DexPatchLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/dexpatch/m/DexPatchLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogInfo"
.end annotation


# instance fields
.field level:I

.field msg:Ljava/lang/String;

.field tag:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
