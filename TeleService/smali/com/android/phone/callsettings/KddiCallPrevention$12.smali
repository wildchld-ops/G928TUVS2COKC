.class Lcom/android/phone/callsettings/KddiCallPrevention$12;
.super Ljava/lang/Object;
.source "KddiCallPrevention.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/KddiCallPrevention;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/KddiCallPrevention;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/KddiCallPrevention;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/KddiCallPrevention$12;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/KddiCallPrevention$12;->this$0:Lcom/android/phone/callsettings/KddiCallPrevention;

    # setter for: Lcom/android/phone/callsettings/KddiCallPrevention;->mFirstVisibleItem:I
    invoke-static {v0, p2}, Lcom/android/phone/callsettings/KddiCallPrevention;->access$502(Lcom/android/phone/callsettings/KddiCallPrevention;I)I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
