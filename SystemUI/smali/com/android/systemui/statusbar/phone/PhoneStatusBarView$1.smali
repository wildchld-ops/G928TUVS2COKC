.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;
.super Landroid/view/OrientationEventListener;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setPanelEndMagin()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    return-void
.end method
