.class public Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;
.super Landroid/app/DialogFragment;
.source "TransitionEffectSelectFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCurrentEffect:I

.field private mEffectNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;",
            ">;"
        }
    .end annotation
.end field

.field private final mListView:Landroid/widget/ListView;

.field private mParent:Lcom/sec/android/app/launcher/activities/FragmentBase;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    new-instance v0, Landroid/widget/ListView;

    invoke-static {}, Lcom/sec/android/app/launcher/activities/LauncherActivity;->instance()Lcom/sec/android/app/launcher/activities/LauncherActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mListView:Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mParent:Lcom/sec/android/app/launcher/activities/FragmentBase;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mCurrentEffect:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mEffectNames:Ljava/util/List;

    iput-object v2, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mEffects:Ljava/util/Map;

    return-void
.end method

.method private getSelectedEffect(Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;)I
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mEffects:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {v3, p1}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mEffectNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    :cond_1
    return v2
.end method


# virtual methods
.method public getCheckedItemPosition()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mEffects:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    iget-object v3, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mParent:Lcom/sec/android/app/launcher/activities/FragmentBase;

    invoke-virtual {v0}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/launcher/activities/FragmentBase;->applyScrollEffect(I)V

    goto :goto_0

    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mEffects:Ljava/util/Map;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x109000f

    iget-object v4, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mEffectNames:Ljava/util/List;

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mCurrentEffect:I

    invoke-virtual {v2, v3, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const-string v2, "Change tranistion effect"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0
.end method

.method public setEffects(Ljava/util/Map;Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;",
            ">;",
            "Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mEffects:Ljava/util/Map;

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mEffectNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mEffectNames:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p2}, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->getSelectedEffect(Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mCurrentEffect:I

    return-void
.end method

.method public setParentFragment(Lcom/sec/android/app/launcher/activities/FragmentBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/activities/TransitionEffectSelectFragment;->mParent:Lcom/sec/android/app/launcher/activities/FragmentBase;

    return-void
.end method
