.class public Lcom/android/incallui/SecTabletCallButtonEmptyView;
.super Lcom/android/incallui/SecTabletCallButtonView;
.source "SecTabletCallButtonEmptyView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecTabletCallButtonView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 3

    invoke-super {p0}, Lcom/android/incallui/SecTabletCallButtonView;->initView()V

    invoke-virtual {p0}, Lcom/android/incallui/SecTabletCallButtonEmptyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040008

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method
