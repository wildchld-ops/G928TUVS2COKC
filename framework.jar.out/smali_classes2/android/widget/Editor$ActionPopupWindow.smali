.class Landroid/widget/Editor$ActionPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionPopupWindow"
.end annotation


# static fields
.field private static final POPUP_TEXT_LAYOUT:I = 0x10900ef

.field private static final TW_POPUP_TEXT_LAYOUT:I = 0x109013b


# instance fields
.field private mClipboardTextView:Landroid/widget/TextView;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mPasteTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mDividerWidth:I

    iput v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mDividerPadding:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method protected clipVertically(I)I
    .locals 13

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Landroid/R$styleable;->ActionBar:[I

    const v11, 0x10102ce

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    const/high16 v8, 0x41c80000    # 25.0f

    iget-object v9, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    float-to-int v7, v8

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-ltz p1, :cond_0

    add-int v8, v1, v7

    if-ge p1, v8, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$ActionPopupWindow;->getTextOffset()I

    move-result v6

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr p1, v8

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    add-int/2addr p1, v8

    iget-object v8, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v8}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    iget v9, v9, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr p1, v8

    :cond_1
    return p1

    :catch_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method protected createPopupWindow()V
    .locals 4

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    return-void
.end method

.method protected getTextOffset()I
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected initContentView()V
    .locals 12

    const v11, 0x109013b

    const/4 v10, 0x0

    const/4 v9, -0x2

    const/4 v8, 0x0

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10809aa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mDivider:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    iput v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mDividerWidth:I

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x11

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput-object v2, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v5}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10809ac

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v5}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v11, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10809ae

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8, v3, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v5}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    const v6, 0x104000b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v5}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getSecClipboardEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v5, v5, Landroid/widget/Editor;->mClipboardEnable:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v11, v5, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10809a6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8, v0, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    const v6, 0x10407e1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-void

    :cond_2
    iget-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v6, 0x108081b

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_3
    const v5, 0x10900ef

    invoke-virtual {v1, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x102004a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    invoke-virtual {p0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    iget-object v0, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->hideControllers()V

    goto :goto_0
.end method

.method public show()V
    .locals 7

    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v4, v4, Landroid/widget/Editor;->mPasteEnable:Z

    if-eqz v4, :cond_2

    move v0, v2

    :goto_0
    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z
    invoke-static {v4}, Landroid/widget/Editor;->access$3700(Landroid/widget/Editor;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v2

    :goto_1
    iget-object v6, p0, Landroid/widget/Editor$ActionPopupWindow;->mPasteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    move v4, v3

    :goto_2
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v4}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSecClipboardEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v4, v4, Landroid/widget/Editor;->mClipboardEnable:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/Editor$ActionPopupWindow;->mClipboardTextView:Landroid/widget/TextView;

    iget-object v6, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v2}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSecClipboardEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v0, :cond_7

    iget-object v2, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/Editor$ActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v2, v2, Landroid/widget/Editor;->mClipboardEnable:Z

    if-nez v2, :cond_7

    :cond_1
    :goto_4
    return-void

    :cond_2
    move v0, v3

    goto/16 :goto_0

    :cond_3
    move v1, v3

    goto/16 :goto_1

    :cond_4
    move v4, v5

    goto/16 :goto_2

    :cond_5
    move v3, v5

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_1

    :cond_7
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    goto :goto_4
.end method
