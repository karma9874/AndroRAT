.class Landroidx/appcompat/app/TwilightManager$TwilightState;
.super Ljava/lang/Object;
.source "TwilightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/TwilightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwilightState"
.end annotation


# instance fields
.field isNight:Z

.field nextUpdate:J

.field todaySunrise:J

.field todaySunset:J

.field tomorrowSunrise:J

.field yesterdaySunset:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    return-void
.end method
