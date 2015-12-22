.class public Lcom/sec/daliviews/views/CheckBox;
.super Lcom/sec/daliviews/views/ItemView;
.source "CheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/views/CheckBox$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mCheckedChangeListener:Lcom/sec/daliviews/views/CheckBox$OnCheckedChangeListener;

.field private mDrawable:Lcom/sec/daliviews/views/StatefulDrawable;

.field private mTextNotTicked:Ljava/lang/String;

.field private mTextTickBox:Ljava/lang/String;

.field private mTextTicked:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/daliviews/views/ItemView;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/CheckBox;->mTextTickBox:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/daliviews/views/CheckBox;->mTextTicked:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/daliviews/views/CheckBox;->mTextNotTicked:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/daliviews/views/CheckBox;->mDrawable:Lcom/sec/daliviews/views/StatefulDrawable;

    iput-object v0, p0, Lcom/sec/daliviews/views/CheckBox;->mCheckedChangeListener:Lcom/sec/daliviews/views/CheckBox$OnCheckedChangeListener;

    invoke-direct {p0, p1}, Lcom/sec/daliviews/views/CheckBox;->initDescriptions(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/daliviews/views/CheckBox;->mTextTickBox:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/daliviews/views/CheckBox;->mTextTicked:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/daliviews/views/CheckBox;->mTextNotTicked:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/daliviews/views/CheckBox;->mDrawable:Lcom/sec/daliviews/views/StatefulDrawable;

    iput-object v0, p0, Lcom/sec/daliviews/views/CheckBox;->mCheckedChangeListener:Lcom/sec/daliviews/views/CheckBox$OnCheckedChangeListener;

    sget-object v0, Lcom/sec/daliviews/R$styleable;->CheckBox:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    sget v0, Lcom/sec/daliviews/R$styleable;->CheckBox_android_checked:I

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    sget v0, Lcom/sec/daliviews/R$styleable;->CheckBox_android_button:I

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    const-wide/16 v4, 0x0

    if-eqz v7, :cond_0

    new-instance v0, Lcom/sec/daliviews/views/StatefulDrawable;

    iget v1, v7, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v0, p1, v1}, Lcom/sec/daliviews/views/StatefulDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/daliviews/views/CheckBox;->mDrawable:Lcom/sec/daliviews/views/StatefulDrawable;

    iget-object v0, p0, Lcom/sec/daliviews/views/CheckBox;->mDrawable:Lcom/sec/daliviews/views/StatefulDrawable;

    invoke-virtual {v0}, Lcom/sec/daliviews/views/StatefulDrawable;->createPeer()J

    move-result-wide v4

    :cond_0
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1}, Lcom/sec/daliviews/views/CheckBox;->initDescriptions(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/sec/daliviews/views/CheckBox;->getmNPeer()J

    move-result-wide v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/daliviews/views/CheckBox;->initParams(JZJ)V

    return-void
.end method

.method private initDescriptions(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/sec/daliviews/R$string;->tickbox:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/daliviews/views/CheckBox;->mTextTickBox:Ljava/lang/String;

    sget v0, Lcom/sec/daliviews/R$string;->tickbox_not_ticked:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/daliviews/views/CheckBox;->mTextNotTicked:Ljava/lang/String;

    sget v0, Lcom/sec/daliviews/R$string;->tickbox_ticked:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/daliviews/views/CheckBox;->mTextTicked:Ljava/lang/String;

    return-void
.end method

.method private native initParams(JZJ)V
.end method

.method private native isChecked(J)Z
.end method

.method private native setChecked(JZ)V
.end method

.method private native setDrawable(JJ)V
.end method


# virtual methods
.method public clone()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sec/daliviews/views/ItemView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/daliviews/views/CheckBox;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method protected native create()J
.end method

.method public isChecked()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/CheckBox;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/CheckBox;->isChecked(J)Z

    move-result v0

    return v0
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCheckedChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/views/CheckBox;->mCheckedChangeListener:Lcom/sec/daliviews/views/CheckBox$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/daliviews/views/CheckBox;->mCheckedChangeListener:Lcom/sec/daliviews/views/CheckBox$OnCheckedChangeListener;

    invoke-interface {v0, p1}, Lcom/sec/daliviews/views/CheckBox$OnCheckedChangeListener;->onCheckedChanged(Z)V

    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/daliviews/views/CheckBox;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/sec/daliviews/views/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/daliviews/views/CheckBox;->mTextTicked:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/daliviews/views/CheckBox;->mTextTickBox:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/daliviews/views/CheckBox;->mTextNotTicked:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setChecked(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/CheckBox;->getmNPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/views/CheckBox;->setChecked(JZ)V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/sec/daliviews/views/CheckBox$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/daliviews/views/CheckBox;->mCheckedChangeListener:Lcom/sec/daliviews/views/CheckBox$OnCheckedChangeListener;

    return-void
.end method

.method public setStatefulDrawable(Lcom/sec/daliviews/views/StatefulDrawable;)V
    .locals 4

    iput-object p1, p0, Lcom/sec/daliviews/views/CheckBox;->mDrawable:Lcom/sec/daliviews/views/StatefulDrawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/views/CheckBox;->getmNPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/StatefulDrawable;->createPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/views/CheckBox;->setDrawable(JJ)V

    :cond_0
    return-void
.end method
