.class public Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;
.super Lcom/mpaas/tinyapi/ResponseModel;
.source "ChooseLocationResponseModel.java"


# instance fields
.field public address:Ljava/lang/String;

.field public cityName:Ljava/lang/String;

.field public latitude:D

.field public longitude:D

.field public name:Ljava/lang/String;

.field public poiId:Ljava/lang/String;

.field public provinceName:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0, p1}, Lcom/mpaas/tinyapi/ResponseModel;-><init>(Ljava/lang/String;)V

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;->latitude:D

    .line 20
    iput-wide v0, p0, Lcom/mpaas/tinyapi/location/ChooseLocationResponseModel;->longitude:D

    .line 28
    return-void
.end method
