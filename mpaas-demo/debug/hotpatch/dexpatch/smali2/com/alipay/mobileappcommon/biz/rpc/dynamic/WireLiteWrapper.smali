.class public final Lcom/alipay/mobileappcommon/biz/rpc/dynamic/WireLiteWrapper;
.super Ljava/lang/Object;
.source "WireLiteWrapper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static toDynamicResourceInfo(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;
    .locals 3
    .param p0, "unionResourceInfo"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;

    .line 210
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 211
    return-object v0

    .line 214
    :cond_0
    new-instance v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;

    invoke-direct {v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;-><init>()V

    .line 215
    .local v0, "dynamicResourceInfo":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;
    move-object v0, v1

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    invoke-virtual {v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->convert(Ljava/lang/String;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    .line 216
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->success:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->success:Ljava/lang/Boolean;

    .line 217
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->message:Ljava/lang/String;

    .line 218
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->version:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->version:Ljava/lang/String;

    .line 219
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->rollback:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->rollback:Ljava/lang/Boolean;

    .line 220
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->quickRollback:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->quickRollback:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->quickRollback:I

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->item:Ljava/util/List;

    invoke-static {v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/WireLiteWrapper;->toDynamicResourceItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->item:Ljava/util/List;

    .line 225
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->diffMaxSize:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 226
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;->diffMaxSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;->diffMaxSize:I

    .line 229
    :cond_2
    return-object v0
.end method

.method public static toDynamicResourceInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p0, "unionResourceInfoList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;",
            ">;"
        }
    .end annotation

    .line 233
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 237
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    .local v0, "dynamicDynamicResourceInfoList":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;

    .line 239
    .local v2, "unionResourceInfo":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;
    invoke-static {v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/WireLiteWrapper;->toDynamicResourceInfo(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceInfo;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    .end local v2    # "unionResourceInfo":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceInfo;
    goto :goto_0

    .line 242
    :cond_1
    return-object v0

    .line 234
    .end local v0    # "dynamicDynamicResourceInfoList":Ljava/util/List;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toDynamicResourceItem(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    .locals 3
    .param p0, "unionResourceItem"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;

    .line 159
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 160
    return-object v0

    .line 163
    :cond_0
    new-instance v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;

    invoke-direct {v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;-><init>()V

    .line 164
    .local v0, "dynamicResourceItem":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;
    move-object v0, v1

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resId:Ljava/lang/String;

    .line 165
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resVersion:Ljava/lang/String;

    .line 166
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resType:Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileMD5:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->fileMD5:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->fileUrl:Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileContent:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->fileContent:Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileSize:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->fileSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->fileSize:I

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resStatus:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resStatus:Ljava/lang/Integer;

    .line 174
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->resExtraData:Ljava/util/List;

    invoke-static {v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/WireLiteWrapper;->toExtraDataList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->resExtraData:Ljava/util/List;

    .line 175
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->issueDesc:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->issueDesc:Ljava/lang/String;

    .line 177
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->business:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->business:Ljava/lang/String;

    .line 178
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->downloadType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionDownloadType;

    if-eqz v1, :cond_2

    .line 179
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->downloadType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionDownloadType;

    invoke-virtual {v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionDownloadType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DownloadType;->convert(Ljava/lang/String;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DownloadType;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->downloadType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DownloadType;

    .line 181
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->storeType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

    if-eqz v1, :cond_3

    .line 182
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->storeType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;

    invoke-virtual {v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStoreType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;->convert(Ljava/lang/String;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->storeType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/StoreType;

    .line 184
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->lazyLoad:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->lazyLoad:Ljava/lang/Integer;

    .line 186
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffMD5:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->diffMD5:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->diffUrl:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffContent:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->diffContent:Ljava/lang/String;

    .line 189
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffFileSize:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 190
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;->diffFileSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;->diffFileSize:I

    .line 193
    :cond_4
    return-object v0
.end method

.method static toDynamicResourceItemList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p0, "unionResourceItemList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;",
            ">;"
        }
    .end annotation

    .line 197
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 202
    .local v0, "dynamicResourceItemList":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;

    .line 203
    .local v2, "unionResourceItem":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;
    invoke-static {v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/WireLiteWrapper;->toDynamicResourceItem(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceItem;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v2    # "unionResourceItem":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceItem;
    goto :goto_0

    .line 206
    :cond_1
    return-object v0

    .line 198
    .end local v0    # "dynamicResourceItemList":Ljava/util/List;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toDynamicResourceResult(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;
    .locals 3
    .param p0, "unionResourceResult"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;

    .line 246
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 247
    return-object v0

    .line 250
    :cond_0
    new-instance v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;

    invoke-direct {v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;-><init>()V

    .line 251
    .local v0, "dynamicResourceResult":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;
    move-object v0, v1

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->success:Ljava/lang/Boolean;

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;->success:Ljava/lang/Boolean;

    .line 252
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->message:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;->message:Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceResult;->info:Ljava/util/List;

    invoke-static {v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/WireLiteWrapper;->toDynamicResourceInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceResult;->info:Ljava/util/List;

    .line 255
    return-object v0
.end method

.method public static toExtraData(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/ExtraData;
    .locals 3
    .param p0, "unionExtraData"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;

    .line 134
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 135
    return-object v0

    .line 138
    :cond_0
    new-instance v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/ExtraData;

    invoke-direct {v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/ExtraData;-><init>()V

    .line 139
    .local v0, "extraData":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/ExtraData;
    move-object v0, v1

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->key:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/ExtraData;->key:Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;->value:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/ExtraData;->value:Ljava/lang/String;

    .line 142
    return-object v0
.end method

.method public static toExtraDataList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p0, "unionExtraDataList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/ExtraData;",
            ">;"
        }
    .end annotation

    .line 146
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 150
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .local v0, "extraDataList":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;

    .line 152
    .local v2, "unionExtraData":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;
    invoke-static {v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/WireLiteWrapper;->toExtraData(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/ExtraData;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v2    # "unionExtraData":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionExtraData;
    goto :goto_0

    .line 155
    :cond_1
    return-object v0

    .line 147
    .end local v0    # "extraDataList":Ljava/util/List;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toUnionAndroidVmType(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;
    .locals 2
    .param p0, "vm"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;

    .line 47
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/WireLiteWrapper$1;->$SwitchMap$com$alipay$mobileappcommon$biz$rpc$dynamic$model$wrapper$AndroidVmType:[I

    invoke-virtual {p0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/AndroidVmType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 64
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;->ALL:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    return-object v0

    .line 62
    :cond_0
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;->AOC:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    return-object v0

    .line 60
    :cond_1
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;->Lemur:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    return-object v0

    .line 58
    :cond_2
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;->ART:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    return-object v0

    .line 56
    :cond_3
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;->Dalvik:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    return-object v0

    .line 49
    :cond_4
    const-string v0, "java.vm.resVersion"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 50
    .local v1, "vmResVersion":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 51
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;->ALL:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    return-object v0

    .line 53
    :cond_5
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;->Dalvik:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionAndroidVmType;

    return-object v0
.end method

.method public static toUnionResourceBizType(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;
    .locals 2
    .param p0, "dynamicResourceBizType"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    .line 69
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/WireLiteWrapper$1;->$SwitchMap$com$alipay$mobileappcommon$biz$rpc$dynamic$model$wrapper$DynamicResourceBizType:[I

    invoke-virtual {p0}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 86
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->UNKNOWN:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    return-object v0

    .line 83
    :pswitch_0
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->RESOURCE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    return-object v0

    .line 81
    :pswitch_1
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->CMD:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    return-object v0

    .line 79
    :pswitch_2
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->IOSDYNAMIC:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    return-object v0

    .line 77
    :pswitch_3
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->NEBULA:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    return-object v0

    .line 75
    :pswitch_4
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->BIRDNEST:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    return-object v0

    .line 73
    :pswitch_5
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->BUNDLE:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    return-object v0

    .line 71
    :pswitch_6
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;->HOTPATCH:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static toUnionResourceIdv(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceIdv;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceIdv;
    .locals 3
    .param p0, "dynamicResourceIdv"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceIdv;

    .line 91
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 92
    return-object v0

    .line 95
    :cond_0
    new-instance v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceIdv;

    invoke-direct {v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceIdv;-><init>()V

    .line 96
    .local v0, "unionResourceIdv":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceIdv;
    move-object v0, v1

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceIdv;->resId:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceIdv;->resId:Ljava/lang/String;

    .line 97
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceIdv;->resVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceIdv;->resVersion:Ljava/lang/String;

    .line 99
    return-object v0
.end method

.method public static toUnionResourceIdvList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p0, "dynamicResourceIdvList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceIdv;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceIdv;",
            ">;"
        }
    .end annotation

    .line 103
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    .local v0, "unionResourceIdvList":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceIdv;

    .line 109
    .local v2, "dynamicResourceIdv":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceIdv;
    invoke-static {v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/WireLiteWrapper;->toUnionResourceIdv(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceIdv;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceIdv;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v2    # "dynamicResourceIdv":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceIdv;
    goto :goto_0

    .line 112
    :cond_1
    return-object v0

    .line 104
    .end local v0    # "unionResourceIdvList":Ljava/util/List;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toUnionResourceParam(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;
    .locals 3
    .param p0, "dynamicResourceParam"    # Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;

    .line 116
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 117
    return-object v0

    .line 120
    :cond_0
    new-instance v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;

    invoke-direct {v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;-><init>()V

    .line 121
    .local v0, "unionResourceParam":Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;
    move-object v0, v1

    iget-object v2, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;

    invoke-static {v2}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/WireLiteWrapper;->toUnionResourceBizType(Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceBizType;)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->bizType:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceBizType;

    .line 122
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;->UUID:Ljava/util/List;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->UUID:Ljava/util/List;

    .line 123
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;->updateVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->updateVersion:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;->issueDesc:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->issueDesc:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;->business:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->business:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;->dynamicResourceIdv:Ljava/util/List;

    invoke-static {v1}, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/WireLiteWrapper;->toUnionResourceIdvList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->resourceIdv:Ljava/util/List;

    .line 127
    iget-object v1, p0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/wrapper/DynamicResourceParam;->checkNew:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionResourceParam;->checkNew:Ljava/lang/Integer;

    .line 129
    return-object v0
.end method

.method public static toUnionStartTimingType(I)Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;
    .locals 1
    .param p0, "when"    # I

    .line 34
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_START:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->getValue()I

    move-result v0

    if-eq v0, p0, :cond_4

    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_IDLE:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->getValue()I

    move-result v0

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_BACKGROUND:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->getValue()I

    move-result v0

    if-ne v0, p0, :cond_1

    .line 37
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;->BACKGROUND:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    return-object v0

    .line 38
    :cond_1
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_USER:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->getValue()I

    move-result v0

    if-ne v0, p0, :cond_2

    .line 39
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;->USER:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    return-object v0

    .line 40
    :cond_2
    sget-object v0, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->WHEN_SYNC:Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/dynamicrelease/strategy/StartTiming;->getValue()I

    move-result v0

    if-ne v0, p0, :cond_3

    .line 41
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;->SYNC:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    return-object v0

    .line 43
    :cond_3
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;->STUNKNOWN:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    return-object v0

    .line 35
    :cond_4
    :goto_0
    sget-object v0, Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;->START:Lcom/alipay/mobileappcommon/biz/rpc/dynamic/model/pb/UnionStartTimingType;

    return-object v0
.end method
