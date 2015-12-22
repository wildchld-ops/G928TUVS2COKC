.class Lcom/android/settings/sim/SimBootReceiver$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SimBootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimBootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/sim/SimBootReceiver;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimBootReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/sim/SimBootReceiver$1;->this$0:Lcom/android/settings/sim/SimBootReceiver;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/sim/SimBootReceiver$1;->this$0:Lcom/android/settings/sim/SimBootReceiver;

    # invokes: Lcom/android/settings/sim/SimBootReceiver;->detectChangeAndNotify()V
    invoke-static {v0}, Lcom/android/settings/sim/SimBootReceiver;->access$000(Lcom/android/settings/sim/SimBootReceiver;)V

    return-void
.end method
