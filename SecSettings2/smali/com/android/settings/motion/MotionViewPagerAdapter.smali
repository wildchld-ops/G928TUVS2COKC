.class public Lcom/android/settings/motion/MotionViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MotionViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/motion/MotionViewPagerAdapter$Description;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/motion/MotionViewPagerAdapter$Description;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/android/settings/motion/MotionViewPagerAdapter;->setDescriptions()V

    return-void
.end method

.method private setDescriptions()V
    .locals 3

    new-instance v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;-><init>()V

    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->context:Landroid/content/Context;

    const-string v2, "pick_up_to_call_out_switch"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;-><init>()V

    const-string v1, "pick_up_to_call_out_switch"

    iput-object v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f020208

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->animation:I

    :goto_0
    const v1, 0x7f0a1127

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->title:I

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f0a1141

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    :goto_1
    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->context:Landroid/content/Context;

    const-string v2, "pick_up_switch"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;-><init>()V

    const-string v1, "pick_up_switch"

    iput-object v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->key:Ljava/lang/String;

    const v1, 0x7f020214

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->animation:I

    const v1, 0x7f0a1128

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->title:I

    const-string v1, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f0a1143

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    :goto_2
    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->context:Landroid/content/Context;

    const-string v2, "merged_mute_or_pause_switch"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;-><init>()V

    const-string v1, "merged_mute_or_pause_switch"

    iput-object v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_a

    const v1, 0x7f02009d

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->animation:I

    :goto_3
    const v1, 0x7f0a1129

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->title:I

    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_2
    const v1, 0x7f0a114d

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    :goto_4
    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->context:Landroid/content/Context;

    const-string v2, "palm_swipe_switch"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;-><init>()V

    const-string v1, "palm_swipe_switch"

    iput-object v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->key:Ljava/lang/String;

    const v1, 0x7f02009b

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->animation:I

    const v1, 0x7f0a112b

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->title:I

    const v1, 0x7f0a1144

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->context:Landroid/content/Context;

    const-string v2, "move_app_switch"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;-><init>()V

    const-string v1, "move_app_switch"

    iput-object v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->key:Ljava/lang/String;

    const v1, 0x7f020210

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->animation:I

    const v1, 0x7f0a112c

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->title:I

    const v1, 0x7f0a1145

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->context:Landroid/content/Context;

    const-string v2, "expand_app_switch"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;-><init>()V

    const-string v1, "expand_app_switch"

    iput-object v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->key:Ljava/lang/String;

    const v1, 0x7f020209

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->animation:I

    const v1, 0x7f0a112d

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->title:I

    const v1, 0x7f0a1146

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    iget-object v1, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void

    :cond_7
    const v1, 0x7f020207

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->animation:I

    goto/16 :goto_0

    :cond_8
    const v1, 0x7f0a1140

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    goto/16 :goto_1

    :cond_9
    const v1, 0x7f0a1142

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    goto/16 :goto_2

    :cond_a
    const v1, 0x7f02009c

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->animation:I

    goto/16 :goto_3

    :cond_b
    const v1, 0x7f0a114c

    iput v1, v0, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    goto/16 :goto_4
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 4

    const/4 v3, -0x1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    iget-object v2, v2, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04013a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f1002b6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f1002b7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x7f1002b5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    iget v5, v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->title:I

    if-nez v5, :cond_1

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v5, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    iget v5, v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    if-nez v5, :cond_2

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v5, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    iget v5, v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->animation:I

    if-nez v5, :cond_3

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_2
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v4, v8}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    return-object v4

    :cond_1
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    iget v5, v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->title:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    iget v5, v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->summary:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/motion/MotionViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;

    iget v5, v5, Lcom/android/settings/motion/MotionViewPagerAdapter$Description;->animation:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
