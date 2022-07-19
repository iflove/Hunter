.class public Lcom/alipay/mobile/antui/excutor/FileLoadRequest;
.super Ljava/lang/Object;
.source "FileLoadRequest.java"


# instance fields
.field public docPath:Ljava/lang/String;

.field public fileId:Ljava/lang/String;

.field public fileMd5:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public onlyWifi:Z

.field public zipName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/antui/excutor/FileLoadRequest;->onlyWifi:Z

    return-void
.end method
