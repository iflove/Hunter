.class public Lcom/alipay/instantrun/runtime/PatchRuntime;
.super Ljava/lang/Object;
.source "PatchRuntime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/instantrun/runtime/PatchRuntime$MethodInterceptor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IR.PatchRuntime"


# instance fields
.field private mAOPWorking:Z

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mInstallResult:I

.field private mMethodInterceptorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Member;",
            "Lcom/alipay/instantrun/runtime/PatchRuntime$MethodInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private mPatch:Lcom/alipay/instantrun/Patch;

.field private mPatchClassLoader:Ldalvik/system/DexClassLoader;

.field private mPatchName:Ljava/lang/String;

.field private mPatchesInfoImplClassFullName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/instantrun/Patch;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mInstallResult:I

    .line 42
    iput-boolean v0, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mAOPWorking:Z

    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mMethodInterceptorMap:Ljava/util/Map;

    .line 46
    iput-object p1, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatch:Lcom/alipay/instantrun/Patch;

    .line 47
    iput-object p2, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchName:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mClassLoader:Ljava/lang/ClassLoader;

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatch:Lcom/alipay/instantrun/Patch;

    iget-object p3, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/alipay/instantrun/Patch;->getPatchPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".PatchesInfoImpl"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchesInfoImplClassFullName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/instantrun/runtime/PatchRuntime;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mAOPWorking:Z

    return p0
.end method


# virtual methods
.method public clone()Lcom/alipay/instantrun/Patch;
    .locals 2

    .line 358
    nop

    .line 360
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/instantrun/Patch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    .line 362
    const-string v1, "IR.PatchRuntime"

    invoke-static {v1, v0}, Lcom/alipay/instantrun/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 364
    :goto_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/alipay/instantrun/runtime/PatchRuntime;->clone()Lcom/alipay/instantrun/Patch;

    move-result-object v0

    return-object v0
.end method

.method public getInstallResult()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mInstallResult:I

    return v0
.end method

.method public installPatch()I
    .locals 17

    .line 93
    move-object/from16 v1, p0

    const-string/jumbo v2, "patch failed! "

    invoke-virtual/range {p0 .. p0}, Lcom/alipay/instantrun/runtime/PatchRuntime;->getInstallResult()I

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/instantrun/runtime/PatchRuntime;->getInstallResult()I

    move-result v0

    return v0

    .line 96
    :cond_0
    iget-object v0, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatch:Lcom/alipay/instantrun/Patch;

    iget-object v3, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/instantrun/Patch;->getPatchPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    const-string v4, "IR.PatchRuntime"

    if-eqz v0, :cond_1

    .line 98
    const-string/jumbo v0, "patchPackageName is empty, make result failed and return"

    invoke-static {v4, v0}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iput v3, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mInstallResult:I

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/instantrun/runtime/PatchRuntime;->getInstallResult()I

    move-result v0

    return v0

    .line 103
    :cond_1
    iget-object v0, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchClassLoader:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_2

    .line 104
    iget-object v0, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatch:Lcom/alipay/instantrun/Patch;

    iget-object v5, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v5}, Lcom/alipay/instantrun/Patch;->getPatchClassLoader(Ljava/lang/ClassLoader;)Ldalvik/system/DexClassLoader;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchClassLoader:Ldalvik/system/DexClassLoader;

    .line 106
    :cond_2
    iget-object v0, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchClassLoader:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_3

    .line 107
    iput v3, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mInstallResult:I

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/instantrun/runtime/PatchRuntime;->getInstallResult()I

    move-result v0

    return v0

    .line 114
    :cond_3
    nop

    .line 116
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "PatchsInfoImpl name:"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchesInfoImplClassFullName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/instantrun/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchClassLoader:Ldalvik/system/DexClassLoader;

    iget-object v6, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchesInfoImplClassFullName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alipay/instantrun/PatchesInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 119
    :try_start_1
    const-string v0, "PatchsInfoImpl ok"

    invoke-static {v4, v0}, Lcom/alipay/instantrun/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    goto :goto_1

    .line 120
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 v6, 0x0

    .line 121
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PatchsInfoImpl failed,cause of"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_1
    const-string v7, " class:PatchRuntime method:patch"

    if-nez v6, :cond_4

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "patchesInfo is null, patch info: id = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/instantrun/utils/ToolsUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iput v3, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mInstallResult:I

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/instantrun/runtime/PatchRuntime;->getInstallResult()I

    move-result v0

    return v0

    .line 131
    :cond_4
    invoke-interface {v6}, Lcom/alipay/instantrun/PatchesInfo;->getPatchedClassesInfo()Ljava/util/List;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_e

    .line 138
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/instantrun/PatchedClassInfo;

    .line 139
    iget-object v8, v0, Lcom/alipay/instantrun/PatchedClassInfo;->patchedClassName:Ljava/lang/String;

    .line 140
    iget-object v9, v0, Lcom/alipay/instantrun/PatchedClassInfo;->patchClassName:Ljava/lang/String;

    .line 141
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_15

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v5, 0x0

    goto/16 :goto_d

    .line 145
    :cond_6
    iget-boolean v10, v0, Lcom/alipay/instantrun/PatchedClassInfo;->isRuntimeAOPPatch:Z

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/alipay/instantrun/PatchedClassInfo;->patchedMethodDescMap:Ljava/util/Map;

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/alipay/instantrun/PatchedClassInfo;->patchedMethodDescMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-gtz v10, :cond_8

    .line 146
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "isRuntimeAOPPatch but patchedMethodDescMap is empty, patch info: id = "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/instantrun/utils/ToolsUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    goto :goto_2

    .line 149
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "current path:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/alipay/instantrun/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-boolean v10, v0, Lcom/alipay/instantrun/PatchedClassInfo;->isRuntimeAOPPatch:Z

    const/4 v12, 0x0

    if-eqz v10, :cond_11

    .line 152
    iput-boolean v12, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mAOPWorking:Z

    .line 154
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " generate ChangeQuickRedirect "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/alipay/instantrun/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 157
    :try_start_3
    iget-object v10, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchClassLoader:Ldalvik/system/DexClassLoader;

    invoke-virtual {v10, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 158
    invoke-virtual {v10}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/instantrun/ChangeQuickRedirect;

    .line 159
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "ChangeQuickRedirect generate success "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/alipay/instantrun/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 163
    nop

    .line 164
    :try_start_4
    iget-object v0, v0, Lcom/alipay/instantrun/PatchedClassInfo;->patchedMethodDescMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 165
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 166
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 167
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_f

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_f

    .line 168
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v11, "method"

    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 170
    nop

    .line 171
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_c

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Lorg/json/JSONObject;->length()I

    move-result v13

    if-lez v13, :cond_c

    .line 172
    const-string/jumbo v13, "name"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 173
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 174
    const-string/jumbo v14, "params"

    invoke-virtual {v11, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 175
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-gtz v14, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v14, 0x0

    .line 176
    :goto_5
    if-eqz v14, :cond_b

    .line 177
    const/4 v15, 0x0

    :goto_6
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v15, v12, :cond_b

    .line 178
    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v14, v15

    .line 177
    add-int/lit8 v15, v15, 0x1

    const/4 v12, 0x0

    goto :goto_6

    .line 181
    :cond_b
    invoke-static {v8, v13, v14}, Lcom/alipay/instantrun/util/ReflectUtil;->getMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/reflect/Member;

    move-result-object v11

    goto :goto_7

    .line 184
    :cond_c
    const/4 v11, 0x0

    :goto_7
    if-eqz v11, :cond_e

    .line 185
    new-instance v12, Lcom/alipay/instantrun/runtime/PatchRuntime$MethodInterceptor;

    invoke-direct {v12, v1, v10, v9}, Lcom/alipay/instantrun/runtime/PatchRuntime$MethodInterceptor;-><init>(Lcom/alipay/instantrun/runtime/PatchRuntime;Lcom/alipay/instantrun/ChangeQuickRedirect;Ljava/lang/String;)V

    .line 186
    iget-object v9, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mMethodInterceptorMap:Ljava/util/Map;

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {}, Lcom/alipay/instantrun/InstantRunManager;->getInstance()Lcom/alipay/instantrun/InstantRunManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alipay/instantrun/InstantRunManager;->getIRContext()Lcom/alipay/instantrun/IRContext;

    move-result-object v9

    .line 188
    if-eqz v9, :cond_d

    .line 189
    invoke-interface {v9, v11, v12}, Lcom/alipay/instantrun/IRContext;->registerMethodAOPListener(Ljava/lang/reflect/Member;Lcom/alipay/instantrun/aop/IMethodAOPListener;)V

    .line 191
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 192
    :cond_e
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "runtime patch but methodDesc invalid id = "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/instantrun/utils/ToolsUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 198
    :cond_10
    goto :goto_8

    .line 160
    :catchall_2
    move-exception v0

    .line 161
    const-string v8, "ChangeQuickRedirect generate failed! "

    invoke-static {v4, v8, v0}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 162
    goto/16 :goto_2

    .line 196
    :catchall_3
    move-exception v0

    .line 197
    const-string/jumbo v8, "runtimeAOP patch failed! "

    invoke-static {v4, v8, v0}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    :goto_8
    iput-boolean v3, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mAOPWorking:Z

    goto/16 :goto_2

    .line 203
    :cond_11
    :try_start_5
    iget-object v0, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchClassLoader:Ldalvik/system/DexClassLoader;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 205
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "oldClass :"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "     fields "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/alipay/instantrun/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    nop

    .line 207
    array-length v12, v10

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v12, :cond_13

    aget-object v14, v10, v13

    .line 208
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v15

    const-class v16, Lcom/alipay/instantrun/ChangeQuickRedirect;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 209
    nop

    .line 210
    goto :goto_a

    .line 207
    :cond_12
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_13
    const/4 v14, 0x0

    .line 213
    :goto_a
    if-nez v14, :cond_14

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "redirectTargetField  is null, patch info: id = "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/instantrun/utils/ToolsUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " something wrong !! can  not find:ChangeQuickRedirect in"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/instantrun/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    goto/16 :goto_2

    .line 218
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " find:ChangeQuickRedirect "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/instantrun/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 220
    :try_start_6
    iget-object v0, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchClassLoader:Ldalvik/system/DexClassLoader;

    invoke-virtual {v0, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 222
    invoke-virtual {v14, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 223
    const/4 v5, 0x0

    :try_start_7
    invoke-virtual {v14, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "redirectTargetField set success "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/instantrun/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 227
    goto/16 :goto_2

    .line 225
    :catchall_4
    move-exception v0

    goto :goto_b

    :catchall_5
    move-exception v0

    const/4 v5, 0x0

    .line 226
    :goto_b
    :try_start_8
    invoke-static {v4, v2, v0}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 230
    goto/16 :goto_2

    .line 228
    :catchall_6
    move-exception v0

    goto :goto_c

    :catchall_7
    move-exception v0

    const/4 v5, 0x0

    .line 229
    :goto_c
    invoke-static {v4, v2, v0}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 232
    goto/16 :goto_2

    .line 141
    :cond_15
    const/4 v5, 0x0

    .line 142
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "patchedClasses or patchClassName is empty, patch info: id = "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/instantrun/utils/ToolsUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    goto/16 :goto_2

    .line 233
    :cond_16
    const-string/jumbo v0, "patch finished "

    invoke-static {v4, v0}, Lcom/alipay/instantrun/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/16 v0, 0x10

    iput v0, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mInstallResult:I

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/instantrun/runtime/PatchRuntime;->getInstallResult()I

    move-result v0

    return v0

    .line 133
    :cond_17
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "patchedClasses is null or empty, patch info: id = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/instantrun/utils/ToolsUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iput v3, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mInstallResult:I

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/alipay/instantrun/runtime/PatchRuntime;->getInstallResult()I

    move-result v0

    return v0
.end method

.method public isMyself(Lcom/alipay/instantrun/Patch;Ljava/lang/String;Ljava/lang/ClassLoader;)Z
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatch:Lcom/alipay/instantrun/Patch;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatch:Lcom/alipay/instantrun/Patch;

    if-eq v0, p1, :cond_1

    .line 57
    return v1

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 60
    return v1

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mClassLoader:Ljava/lang/ClassLoader;

    if-eq p1, p3, :cond_3

    .line 63
    return v1

    .line 65
    :cond_3
    const/4 p1, 0x1

    return p1

    .line 54
    :cond_4
    :goto_0
    return v1
.end method

.method public isSamePatch(Lcom/alipay/instantrun/Patch;Ljava/lang/String;)Z
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatch:Lcom/alipay/instantrun/Patch;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    if-eqz p1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatch:Lcom/alipay/instantrun/Patch;

    iget-object v2, p0, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/instantrun/Patch;->getPatchID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p1, p2}, Lcom/alipay/instantrun/Patch;->getPatchID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1

    .line 80
    :cond_3
    :goto_0
    return v1

    .line 77
    :cond_4
    :goto_1
    return v1
.end method

.method public rollback()I
    .locals 17

    .line 239
    move-object/from16 v1, p0

    const-string v2, "IR.PatchRuntime"

    iget-object v0, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchClassLoader:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_0

    .line 240
    iget-object v0, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatch:Lcom/alipay/instantrun/Patch;

    iget-object v3, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v3}, Lcom/alipay/instantrun/Patch;->getPatchClassLoader(Ljava/lang/ClassLoader;)Ldalvik/system/DexClassLoader;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchClassLoader:Ldalvik/system/DexClassLoader;

    .line 242
    :cond_0
    iget-object v0, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchClassLoader:Ldalvik/system/DexClassLoader;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 243
    return v3

    .line 246
    :cond_1
    nop

    .line 248
    const/4 v4, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "PatchsInfoImpl name:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchesInfoImplClassFullName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/instantrun/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchClassLoader:Ldalvik/system/DexClassLoader;

    iget-object v5, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchesInfoImplClassFullName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/alipay/instantrun/PatchesInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 251
    :try_start_1
    const-string v0, "PatchsInfoImpl ok"

    invoke-static {v2, v0}, Lcom/alipay/instantrun/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    goto :goto_1

    .line 252
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v5, v4

    .line 253
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "PatchsInfoImpl failed, cause of"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :goto_1
    const-string v6, " class:PatchRuntime method:patch"

    if-nez v5, :cond_2

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "patchesInfo is null, patch info: id = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/instantrun/utils/ToolsUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return v3

    .line 262
    :cond_2
    invoke-interface {v5}, Lcom/alipay/instantrun/PatchesInfo;->getPatchedClassesInfo()Ljava/util/List;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_6

    .line 269
    :cond_3
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mAOPWorking:Z

    .line 271
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/instantrun/PatchedClassInfo;

    .line 272
    iget-object v8, v0, Lcom/alipay/instantrun/PatchedClassInfo;->patchedClassName:Ljava/lang/String;

    .line 273
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "patchedClasses is empty, patch info: id = "

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/instantrun/utils/ToolsUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    goto :goto_2

    .line 277
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "current path:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/alipay/instantrun/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-boolean v0, v0, Lcom/alipay/instantrun/PatchedClassInfo;->isRuntimeAOPPatch:Z

    const-string/jumbo v9, "patch rollback failed! "

    if-eqz v0, :cond_7

    .line 280
    :try_start_2
    iget-object v0, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mMethodInterceptorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Member;

    .line 281
    invoke-static {}, Lcom/alipay/instantrun/InstantRunManager;->getInstance()Lcom/alipay/instantrun/InstantRunManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alipay/instantrun/InstantRunManager;->getIRContext()Lcom/alipay/instantrun/IRContext;

    move-result-object v10

    .line 282
    if-eqz v10, :cond_5

    .line 283
    iget-object v11, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mMethodInterceptorMap:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/alipay/instantrun/aop/IMethodAOPListener;

    invoke-interface {v10, v8, v11}, Lcom/alipay/instantrun/IRContext;->unregisterMethodAOPListener(Ljava/lang/reflect/Member;Lcom/alipay/instantrun/aop/IMethodAOPListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 285
    :cond_5
    goto :goto_3

    .line 286
    :catchall_2
    move-exception v0

    .line 287
    invoke-static {v2, v9, v0}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    :cond_6
    goto :goto_2

    .line 291
    :cond_7
    :try_start_3
    iget-object v0, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchClassLoader:Ldalvik/system/DexClassLoader;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 293
    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "oldClass :"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "     fields "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v13, v11

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/alipay/instantrun/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    nop

    .line 295
    array-length v12, v11

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_9

    aget-object v14, v11, v13

    .line 296
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v15

    const-class v16, Lcom/alipay/instantrun/ChangeQuickRedirect;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v5, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 297
    nop

    .line 298
    goto :goto_5

    .line 295
    :cond_8
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    goto :goto_4

    :cond_9
    move-object v14, v4

    .line 301
    :goto_5
    if-nez v14, :cond_a

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "redirectTargetField  is null, patch info: id = "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/instantrun/utils/ToolsUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " something wrong !! can  not find:ChangeQuickRedirect"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/instantrun/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 306
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " find:ChangeQuickRedirect"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/instantrun/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 308
    :try_start_4
    invoke-virtual {v14, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 309
    invoke-virtual {v14, v4, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "redirectTargetField set empty success "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/instantrun/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 313
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 311
    :catchall_3
    move-exception v0

    .line 312
    :try_start_5
    invoke-static {v2, v9, v0}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 316
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 314
    :catchall_4
    move-exception v0

    .line 315
    invoke-static {v2, v9, v0}, Lcom/alipay/instantrun/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 319
    :cond_b
    const-string/jumbo v0, "rollback finished"

    invoke-static {v2, v0}, Lcom/alipay/instantrun/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/16 v0, 0x10

    return v0

    .line 264
    :cond_c
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "patchedClasses is null or empty, patch info: id = "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/alipay/instantrun/runtime/PatchRuntime;->mPatchName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/instantrun/utils/ToolsUtil;->getLineInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/instantrun/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return v3
.end method
