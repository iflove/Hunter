.class public abstract Landroidx/fragment/app/FragmentStatePagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "FragmentStatePagerAdapter.java"


# static fields
.field public static final BEHAVIOR_RESUME_ONLY_CURRENT_FRAGMENT:I = 0x1

.field public static final BEHAVIOR_SET_USER_VISIBLE_HINT:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentStatePagerAdapt"


# instance fields
.field private final mBehavior:I

.field private mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

.field private mExecutingFinishUpdate:Z

.field private final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1
    .param p1, "fm"    # Landroidx/fragment/app/FragmentManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;I)V
    .locals 2
    .param p1, "fm"    # Landroidx/fragment/app/FragmentManager;
    .param p2, "behavior"    # I

    .line 141
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    .line 107
    iput-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 142
    iput-object p1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 143
    iput p2, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mBehavior:I

    .line 144
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 209
    move-object v0, p3

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 211
    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 212
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    .line 216
    :cond_0
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gt v1, p2, :cond_1

    .line 217
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 220
    invoke-virtual {v3, v0}, Landroidx/fragment/app/FragmentManager;->saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v2

    .line 219
    :goto_1
    invoke-virtual {v1, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 224
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 225
    iput-object v2, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 227
    :cond_3
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 261
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_1

    .line 267
    iget-boolean v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mExecutingFinishUpdate:Z

    if-nez v1, :cond_0

    .line 269
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mExecutingFinishUpdate:Z

    .line 270
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    iput-boolean v2, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mExecutingFinishUpdate:Z

    .line 273
    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mExecutingFinishUpdate:Z

    .line 273
    throw v0

    .line 275
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    .line 277
    :cond_1
    return-void
.end method

.method public abstract getItem(I)Landroidx/fragment/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .line 168
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 169
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 170
    .local v0, "f":Landroidx/fragment/app/Fragment;
    if-eqz v0, :cond_0

    .line 171
    return-object v0

    .line 175
    .end local v0    # "f":Landroidx/fragment/app/Fragment;
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    .line 179
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 181
    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_2

    .line 182
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment$SavedState;

    .line 183
    .local v1, "fss":Landroidx/fragment/app/Fragment$SavedState;
    if-eqz v1, :cond_2

    .line 184
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V

    .line 187
    .end local v1    # "fss":Landroidx/fragment/app/Fragment$SavedState;
    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_3

    .line 188
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 191
    iget v2, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mBehavior:I

    if-nez v2, :cond_4

    .line 192
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 195
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 198
    iget v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mBehavior:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 199
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    .line 202
    :cond_5
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .line 281
    move-object v0, p2

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 9
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 309
    if-eqz p1, :cond_4

    .line 310
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 311
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 312
    const-string/jumbo v1, "states"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 313
    .local v1, "fss":[Landroid/os/Parcelable;
    iget-object v2, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 314
    iget-object v2, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 315
    if-eqz v1, :cond_0

    .line 316
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 317
    iget-object v3, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    aget-object v4, v1, v2

    check-cast v4, Landroidx/fragment/app/Fragment$SavedState;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 321
    .local v2, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 322
    .local v4, "key":Ljava/lang/String;
    const-string v5, "f"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 323
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 324
    .local v5, "index":I
    iget-object v6, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v6, v0, v4}, Landroidx/fragment/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v6

    .line 325
    .local v6, "f":Landroidx/fragment/app/Fragment;
    if-eqz v6, :cond_2

    .line 326
    :goto_2
    iget-object v7, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gt v7, v5, :cond_1

    .line 327
    iget-object v7, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 329
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 330
    iget-object v7, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v7, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 332
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad fragment at key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FragmentStatePagerAdapt"

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "index":I
    .end local v6    # "f":Landroidx/fragment/app/Fragment;
    :cond_3
    :goto_3
    goto :goto_1

    .line 337
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "fss":[Landroid/os/Parcelable;
    .end local v2    # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 5

    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, "state":Landroid/os/Bundle;
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 289
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 290
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/fragment/app/Fragment$SavedState;

    .line 291
    .local v1, "fss":[Landroidx/fragment/app/Fragment$SavedState;
    iget-object v2, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 292
    const-string/jumbo v2, "states"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 294
    .end local v1    # "fss":[Landroidx/fragment/app/Fragment$SavedState;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 295
    iget-object v2, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 296
    .local v2, "f":Landroidx/fragment/app/Fragment;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 297
    if-nez v0, :cond_1

    .line 298
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v0, v3

    .line 300
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v4, v0, v3, v2}, Landroidx/fragment/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 294
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .line 232
    move-object v0, p3

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 233
    .local v0, "fragment":Landroidx/fragment/app/Fragment;
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-eq v0, v1, :cond_5

    .line 234
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 235
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 236
    iget v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mBehavior:I

    if-ne v1, v2, :cond_1

    .line 237
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez v1, :cond_0

    .line 238
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    .line 240
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    iget-object v3, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    sget-object v4, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 242
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 245
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 246
    iget v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mBehavior:I

    if-ne v1, v2, :cond_4

    .line 247
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    if-nez v1, :cond_3

    .line 248
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    .line 250
    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurTransaction:Landroidx/fragment/app/FragmentTransaction;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    .line 252
    :cond_4
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 255
    :goto_1
    iput-object v0, p0, Landroidx/fragment/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    .line 257
    :cond_5
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;

    .line 154
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 158
    return-void

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewPager with adapter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " requires a view id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method