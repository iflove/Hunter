.class public Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
.super Ljava/lang/Object;
.source "H5UpdateAppCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5UpdateAppCallback"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZZ)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "isLimit"    # Z

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "install result "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "H5UpdateAppCallback"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
