.class public Lcom/ime/framework/view/emoticon/EmoticonAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EmoticonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;,
        Lcom/ime/framework/view/emoticon/EmoticonAdapter$BitmapRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mAbstractEmoticonLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

.field private mBitmapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCategory:I

.field private mContext:Landroid/content/Context;

.field private mEmojiBounds:Landroid/graphics/Rect;

.field private mEmoticonAdapterListener:Lcom/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;

.field private mEmoticonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mFontSize:F

.field private mItemBackgroundResId:I

.field private mItemheight:I

.field private mItemwidth:I

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;",
            ")V"
        }
    .end annotation

    const v0, 0x1090003

    invoke-direct {p0, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p4, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mAbstractEmoticonLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    iput-object p1, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonList:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mEmojiBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mBitmapList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mBitmapList:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;",
            ")V"
        }
    .end annotation

    const v0, 0x1090003

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p3, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mAbstractEmoticonLayout:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    iput-object p1, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mBitmapList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mBitmapList:Ljava/util/ArrayList;

    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mEmojiBounds:Landroid/graphics/Rect;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/ime/framework/view/emoticon/EmoticonAdapter;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mEmojiBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/framework/view/emoticon/EmoticonAdapter;)Lcom/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;
    .locals 1

    iget-object v0, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonAdapterListener:Lcom/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;

    return-object v0
.end method

.method private setClickListener(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/ime/framework/view/emoticon/EmoticonAdapter$1;

    invoke-direct {v0, p0}, Lcom/ime/framework/view/emoticon/EmoticonAdapter$1;-><init>(Lcom/ime/framework/view/emoticon/EmoticonAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    const/4 v11, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iget v8, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mFontSize:F

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v8, -0x1000000

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-nez p2, :cond_1

    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    iget v9, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mItemwidth:I

    iget v10, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mItemheight:I

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v8, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mItemBackgroundResId:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    invoke-direct {p0, v7}, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->setClickListener(Landroid/view/View;)V

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, p1, :cond_0

    iget v8, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mCategory:I

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    invoke-direct {p0, v7}, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->setClickListener(Landroid/view/View;)V

    :goto_1
    return-object v7

    :cond_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    iget-object v10, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mEmojiBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v8, v11, v9, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mEmojiBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mEmojiBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/ime/framework/view/emoticon/EmoticonAdapter$BitmapRunnable;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v0, v9, v4}, Lcom/ime/framework/view/emoticon/EmoticonAdapter$BitmapRunnable;-><init>(Lcom/ime/framework/view/emoticon/EmoticonAdapter;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-virtual {v3, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v5, Ljava/lang/Thread;

    new-instance v8, Lcom/ime/framework/view/emoticon/EmoticonAdapter$BitmapRunnable;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v0, v9, v4}, Lcom/ime/framework/view/emoticon/EmoticonAdapter$BitmapRunnable;-><init>(Lcom/ime/framework/view/emoticon/EmoticonAdapter;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-direct {v5, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->run()V

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v8, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_1
    instance-of v8, p2, Landroid/widget/ImageView;

    if-eqz v8, :cond_2

    move-object v8, p2

    check-cast v8, Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    move-object v7, p2

    check-cast v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, p1, :cond_3

    iget v8, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mCategory:I

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_3
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    iget-object v10, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mEmojiBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v8, v11, v9, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v8, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mEmojiBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mEmojiBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v6, Ljava/lang/Thread;

    new-instance v8, Lcom/ime/framework/view/emoticon/EmoticonAdapter$BitmapRunnable;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v0, v9, v4}, Lcom/ime/framework/view/emoticon/EmoticonAdapter$BitmapRunnable;-><init>(Lcom/ime/framework/view/emoticon/EmoticonAdapter;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Paint;)V

    invoke-direct {v6, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->run()V

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    iget-object v8, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3
.end method

.method public setCurrentCategory(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mCategory:I

    return-void
.end method

.method public setEmoticonAdapterListener(Lcom/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mEmoticonAdapterListener:Lcom/ime/framework/view/emoticon/EmoticonAdapter$EmoticonAdapterListener;

    return-void
.end method

.method public setEmoticonHeight(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mItemheight:I

    return-void
.end method

.method public setEmoticonWidth(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mItemwidth:I

    return-void
.end method

.method public setFontSize(F)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mFontSize:F

    return-void
.end method

.method public setInitialBitmapCache(Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mBitmapList:Ljava/util/ArrayList;

    return-void
.end method

.method public setItemBackgroundResId(I)V
    .locals 0

    iput p1, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mItemBackgroundResId:I

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/emoticon/EmoticonAdapter;->mTypeface:Landroid/graphics/Typeface;

    return-void
.end method
