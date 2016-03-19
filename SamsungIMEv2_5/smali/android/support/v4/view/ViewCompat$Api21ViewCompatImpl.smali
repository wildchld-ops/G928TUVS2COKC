.class Landroid/support/v4/view/ViewCompat$Api21ViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api21ViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$KitKatViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public isImportantForAccessibility(Landroid/view/View;)Z
    .locals 1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatApi21;->isImportantForAccessibility(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatApi21;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    return-void
.end method
