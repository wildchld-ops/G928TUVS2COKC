.class Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$12;
.super Ljava/lang/Object;
.source "SecAutoRejectVideoCallList.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$12;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$12;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    # setter for: Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->mFirstVisibleItem:I
    invoke-static {v0, p2}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->access$1002(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;I)I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
