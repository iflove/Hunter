.class public Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel;
.super Ljava/lang/Object;
.source "H5IpcSchemeModel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private params:Landroid/os/Bundle;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel$1;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel;->uri:Landroid/net/Uri;

    .line 21
    iput-object p2, p0, Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel;->params:Landroid/os/Bundle;

    .line 22
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel;->uri:Landroid/net/Uri;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel;->params:Landroid/os/Bundle;

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel;->params:Landroid/os/Bundle;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public setParams(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel;->params:Landroid/os/Bundle;

    .line 38
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel;->uri:Landroid/net/Uri;

    .line 30
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel;->uri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebula/process/H5IpcSchemeModel;->params:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method
