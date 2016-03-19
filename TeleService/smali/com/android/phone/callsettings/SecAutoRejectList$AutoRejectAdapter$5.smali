.class Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$5;
.super Ljava/lang/Object;
.source "SecAutoRejectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->drawNormalScreen(ILandroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

.field final synthetic val$item:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iput-object p2, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$5;->val$item:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$5;->val$item:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/android/phone/callsettings/SecAutoRejectList;->deleteAutoRejectNumber(I)V
    invoke-static {v0, v1}, Lcom/android/phone/callsettings/SecAutoRejectList;->access$1500(Lcom/android/phone/callsettings/SecAutoRejectList;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter$5;->this$1:Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;

    iget-object v0, v0, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectAdapter;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    # invokes: Lcom/android/phone/callsettings/SecAutoRejectList;->makeScreen()V
    invoke-static {v0}, Lcom/android/phone/callsettings/SecAutoRejectList;->access$1000(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    return-void
.end method
