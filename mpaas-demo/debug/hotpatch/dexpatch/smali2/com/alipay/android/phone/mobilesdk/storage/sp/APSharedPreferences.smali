.class public Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;
.super Ljava/lang/Object;
.source "APSharedPreferences.java"


# instance fields
.field private edit:Landroid/content/SharedPreferences$Editor;

.field private mGroup:Ljava/lang/String;

.field private mMode:I

.field private mSP:Landroid/content/SharedPreferences;

.field private sContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "group"    # Ljava/lang/String;
    .param p3, "mode"    # I

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    .line 13
    const-string v1, "alipay_default_sp"

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mGroup:Ljava/lang/String;

    .line 15
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    .line 16
    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    .line 19
    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    .line 22
    :cond_0
    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mGroup:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    .line 24
    return-void
.end method

.method private contains(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 146
    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    if-nez v1, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->createSPIfNot()V

    .line 148
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mSP:Landroid/content/SharedPreferences;

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 150
    :cond_0
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 153
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private createEditIfNot()V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 33
    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    .line 37
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 40
    :cond_1
    return-void
.end method

.method private createSPIfNot()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mSP:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 45
    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mSP:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mSP:Landroid/content/SharedPreferences;

    .line 49
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 52
    :cond_1
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # Z

    .line 157
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 158
    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    if-nez v1, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->createSPIfNot()V

    .line 160
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mSP:Landroid/content/SharedPreferences;

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 162
    :cond_0
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 166
    :cond_1
    return p3
.end method

.method private getFloat(Ljava/lang/String;Ljava/lang/String;F)F
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # F

    .line 209
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 210
    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    if-nez v1, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->createSPIfNot()V

    .line 212
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mSP:Landroid/content/SharedPreferences;

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0

    .line 214
    :cond_0
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0

    .line 218
    :cond_1
    return p3
.end method

.method private getGroup()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mGroup:Ljava/lang/String;

    return-object v0
.end method

.method private getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .line 183
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 184
    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    if-nez v1, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->createSPIfNot()V

    .line 186
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mSP:Landroid/content/SharedPreferences;

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 188
    :cond_0
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 192
    :cond_1
    return p3
.end method

.method private getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # J

    .line 196
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 197
    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    if-nez v1, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->createSPIfNot()V

    .line 199
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mSP:Landroid/content/SharedPreferences;

    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    .line 201
    :cond_0
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    .line 205
    :cond_1
    return-wide p3
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 171
    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    if-nez v1, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->createSPIfNot()V

    .line 173
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mSP:Landroid/content/SharedPreferences;

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :cond_1
    return-object p3
.end method

.method private putBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 231
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->createEditIfNot()V

    .line 232
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 233
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 234
    const/4 v0, 0x1

    return v0

    .line 236
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private putFloat(Ljava/lang/String;Ljava/lang/String;F)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # F

    .line 258
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->createEditIfNot()V

    .line 259
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 260
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 261
    const/4 v0, 0x1

    return v0

    .line 263
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private putInt(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 222
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->createEditIfNot()V

    .line 223
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 225
    const/4 v0, 0x1

    return v0

    .line 227
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private putLong(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # J

    .line 249
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->createEditIfNot()V

    .line 250
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 252
    const/4 v0, 0x1

    return v0

    .line 254
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 240
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->createEditIfNot()V

    .line 241
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 243
    const/4 v0, 0x1

    return v0

    .line 245
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public apply()V
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->createEditIfNot()V

    .line 108
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    :cond_0
    return-void
.end method

.method public clear()Z
    .locals 1

    .line 124
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->createEditIfNot()V

    .line 125
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 127
    const/4 v0, 0x1

    return v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public commit()Z
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->createEditIfNot()V

    .line 100
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0

    .line 103
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 134
    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    if-nez v1, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->createSPIfNot()V

    .line 136
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mSP:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 138
    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 141
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 55
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .line 71
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 63
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .line 67
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 28
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 79
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putFloat(Ljava/lang/String;F)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 91
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putFloat(Ljava/lang/String;Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public putInt(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 75
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putInt(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public putLong(Ljava/lang/String;J)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 87
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putLong(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 115
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->createEditIfNot()V

    .line 116
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/sp/APSharedPreferences;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    const/4 v0, 0x1

    return v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
