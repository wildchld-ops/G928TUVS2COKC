.class public Lcom/android/systemui/statusbar/EmptyShadeView;
.super Lcom/android/systemui/statusbar/StackScrollerDecorView;
.source "EmptyShadeView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StackScrollerDecorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected findContentView()Landroid/view/View;
    .locals 1

    const v0, 0x7f0e03d7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const v0, 0x7f0e03d7

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0d036a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
