.class public Lcom/android/contacts/common/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# static fields
.field private static final OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

.field private static final RECT_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/common/util/ViewUtil$1;

    invoke-direct {v0}, Lcom/android/contacts/common/util/ViewUtil$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/util/ViewUtil;->OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    new-instance v0, Lcom/android/contacts/common/util/ViewUtil$2;

    invoke-direct {v0}, Lcom/android/contacts/common/util/ViewUtil$2;-><init>()V

    sput-object v0, Lcom/android/contacts/common/util/ViewUtil;->RECT_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method public static isViewLayoutRtl(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setupFloatingActionButton(Landroid/view/View;Landroid/content/res/Resources;)V
    .locals 1

    sget-object v0, Lcom/android/contacts/common/util/ViewUtil;->OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const v0, 0x7f0a001d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationZ(F)V

    return-void
.end method
