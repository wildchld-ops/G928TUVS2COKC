.class Landroid/support/v4/view/ViewCompatApi21;
.super Ljava/lang/Object;
.source "ViewCompatApi21.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isImportantForAccessibility(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    return v0
.end method

.method public static setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 1

    new-instance v0, Landroid/support/v4/view/ViewCompatApi21$1;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewCompatApi21$1;-><init>(Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method
