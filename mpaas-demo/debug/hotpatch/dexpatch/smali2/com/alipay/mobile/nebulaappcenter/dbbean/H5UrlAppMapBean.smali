.class public Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;
.super Ljava/lang/Object;
.source "H5UrlAppMapBean.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "nebula_app_urlmap_table"
.end annotation


# static fields
.field public static final COL_APPID:Ljava/lang/String; = "app_id"

.field public static final COL_PUBLICURL:Ljava/lang/String; = "public_url"

.field public static final COL_USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "app_id"
    .end annotation
.end field

.field private id:I
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        generatedId = true
    .end annotation
.end field

.field private publicUrl:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "public_url"
        index = true
        uniqueCombo = true
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "user_id"
        uniqueCombo = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;->id:I

    return v0
.end method

.method public getPublicUrl()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;->publicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;->appId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;->id:I

    .line 37
    return-void
.end method

.method public setPublicUrl(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;->publicUrl:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/alipay/mobile/nebulaappcenter/dbbean/H5UrlAppMapBean;->userId:Ljava/lang/String;

    .line 61
    return-void
.end method
