.class public Lcom/alipay/mobile/common/share/ShareContent;
.super Ljava/lang/Object;
.source "ShareContent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private content:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private extData:Ljava/lang/String;

.field private extraInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private fileProviderAuthority:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private image:[B

.field private imgUrl:Ljava/lang/String;

.field private localImageUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/common/share/ShareContent;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/common/share/ShareContent;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getExtData()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/common/share/ShareContent;->extData:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/common/share/ShareContent;->extraInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method public getFileProviderAuthority()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/common/share/ShareContent;->fileProviderAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/common/share/ShareContent;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()[B
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/common/share/ShareContent;->image:[B

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/common/share/ShareContent;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalImageUrl()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/common/share/ShareContent;->localImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/common/share/ShareContent;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/common/share/ShareContent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/common/share/ShareContent;->content:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .line 137
    iput-object p1, p0, Lcom/alipay/mobile/common/share/ShareContent;->contentType:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setExtData(Ljava/lang/String;)V
    .locals 0
    .param p1, "extData"    # Ljava/lang/String;

    .line 129
    iput-object p1, p0, Lcom/alipay/mobile/common/share/ShareContent;->extData:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setExtraInfo(Ljava/util/HashMap;)V
    .locals 0
    .param p1, "extraInfo"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/alipay/mobile/common/share/ShareContent;->extraInfo:Ljava/util/HashMap;

    .line 154
    return-void
.end method

.method public setFileProviderAuthority(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileProviderAuthority"    # Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lcom/alipay/mobile/common/share/ShareContent;->fileProviderAuthority:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconUrl"    # Ljava/lang/String;

    .line 145
    iput-object p1, p0, Lcom/alipay/mobile/common/share/ShareContent;->iconUrl:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setImage([B)V
    .locals 0
    .param p1, "image"    # [B

    .line 88
    iput-object p1, p0, Lcom/alipay/mobile/common/share/ShareContent;->image:[B

    .line 89
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgUrl"    # Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/alipay/mobile/common/share/ShareContent;->imgUrl:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setLocalImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "localImageUrl"    # Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lcom/alipay/mobile/common/share/ShareContent;->localImageUrl:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/alipay/mobile/common/share/ShareContent;->title:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .line 96
    iput-object p1, p0, Lcom/alipay/mobile/common/share/ShareContent;->url:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/share/ShareContent;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/share/ShareContent;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/share/ShareContent;->image:[B

    if-eqz v1, :cond_0

    array-length v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/share/ShareContent;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",imgUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alipay/mobile/common/share/ShareContent;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
