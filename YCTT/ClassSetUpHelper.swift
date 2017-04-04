//
//  ClassSetUpHelper.swift
//  School Timetable
//
//  Created by 수현 on 9/2/16.
//  Copyright © 2016 YCIS-PX. All rights reserved.
//

import Foundation

class ClassSetUpHelper {
    // Y7 Set Up
    static func Y7ASetUp() {
        // Initialize an empty Subject object
        let emA = Subject()
        // Assign the yeargroup and class the subject belongs to
        emA.yearGroup = "7A"
        // Assign the name of the class
        emA.name = "English/Maths A"
        // Assign the room number of the class
        emA.roomNumber = "B201"
        // Save the object to Realm
        RealmHelper.addSubject(emA)
        // Repeat above steps
        let emB = Subject()
        emB.yearGroup = "7A"
        emB.name = "English/Maths B"
        emA.roomNumber = "B201"
        RealmHelper.addSubject(emB)
        let cn = Subject()
        cn.yearGroup = "7A"
        cn.name = "Chinese"
        RealmHelper.addSubject(cn)
        let cs = Subject()
        cs.yearGroup = "7A"
        cs.name = "Chinese Studies"
        RealmHelper.addSubject(cs)
        let mb = Subject()
        mb.yearGroup = "7A"
        mb.name = "Morning Break"
        RealmHelper.addSubject(mb)
        let lt = Subject()
        lt.yearGroup = "7A"
        lt.name = "Lunch Time"
        RealmHelper.addSubject(lt)
        let hu = Subject()
        hu.yearGroup = "7A"
        hu.name = "Humanities"
        hu.roomNumber = "A203"
        RealmHelper.addSubject(hu)
        let sc = Subject()
        sc.yearGroup = "7A"
        sc.name = "Science"
        sc.roomNumber = "A303"
        RealmHelper.addSubject(sc)
        let Music = Subject()
        Music.yearGroup = "7A"
        Music.name = "Music"
        Music.roomNumber = "B313"
        RealmHelper.addSubject(Music)
        let Art = Subject()
        Art.yearGroup = "7A"
        Art.name = "Art"
        Art.roomNumber = "B113"
        RealmHelper.addSubject(Art)
        let Comp = Subject()
        Comp.yearGroup = "7A"
        Comp.name = "Computing"
        Comp.roomNumber = "C205"
        RealmHelper.addSubject(Comp)
        let dt = Subject()
        dt.yearGroup = "7A"
        dt.name = "D&T"
        dt.roomNumber = "C101"
        RealmHelper.addSubject(dt)
        let pe = Subject()
        pe.yearGroup = "7A"
        pe.name = "Physical Education"
        pe.roomNumber = "Field"
        RealmHelper.addSubject(pe)
        let ce = Subject()
        ce.yearGroup = "7A"
        ce.name = "Character Education"
        ce.roomNumber = "A218"
        RealmHelper.addSubject(ce)
        let cp = Subject()
        cp.yearGroup = "7A"
        cp.name = "Community Period"
        cp.roomNumber = "A315"
        RealmHelper.addSubject(cp)
    }
    // have to change like Y7ASetUp
    static func Y7BSetUp() {
        let emA = Subject()
        emA.yearGroup = "7B"
        emA.name = "English/Maths A"
        RealmHelper.addSubject(emA)
        let emB = Subject()
        emB.yearGroup = "7B"
        emB.name = "English/Maths B"
        RealmHelper.addSubject(emB)
        let cn = Subject()
        cn.yearGroup = "7B"
        cn.name = "Chinese"
        RealmHelper.addSubject(cn)
        let cs = Subject()
        cs.yearGroup = "7B"
        cs.name = "Chinese Studies"
        RealmHelper.addSubject(cs)
        let mb = Subject()
        mb.yearGroup = "7B"
        mb.name = "Morning Break"
        RealmHelper.addSubject(mb)
        let lt = Subject()
        lt.yearGroup = "7B"
        lt.name = "Lunch Time"
        RealmHelper.addSubject(lt)
        let hu = Subject()
        hu.yearGroup = "7B"
        hu.name = "Humanities"
        hu.roomNumber = "A202"
        RealmHelper.addSubject(hu)
        let sc = Subject()
        sc.yearGroup = "7B"
        sc.name = "Science"
        sc.roomNumber = "A310"
        RealmHelper.addSubject(sc)
        let Music = Subject()
        Music.yearGroup = "7B"
        Music.name = "Music"
        Music.roomNumber = "B313"
        RealmHelper.addSubject(Music)
        let Art = Subject()
        Art.yearGroup = "7B"
        Art.name = "Art"
        Art.roomNumber = "B114b"
        RealmHelper.addSubject(Art)
        let Comp = Subject()
        Comp.yearGroup = "7B"
        Comp.name = "Computing"
        Comp.roomNumber = "C204"
        RealmHelper.addSubject(Comp)
        let dt = Subject()
        dt.yearGroup = "7B"
        dt.name = "D&T"
        dt.roomNumber = "C103"
        RealmHelper.addSubject(dt)
        let pe = Subject()
        pe.yearGroup = "7B"
        pe.name = "Physical Education"
        pe.roomNumber = "Field"
        RealmHelper.addSubject(pe)
        let ce = Subject()
        ce.yearGroup = "7B"
        ce.name = "Character Education"
        ce.roomNumber = "A218"
        RealmHelper.addSubject(ce)
        let cp = Subject()
        cp.yearGroup = "7B"
        cp.name = "Community Period"
        cp.roomNumber = "A315"
        RealmHelper.addSubject(cp)
    }
    static func Y7CSetUp() {
        let emA = Subject()
        emA.yearGroup = "7C"
        emA.name = "English/Maths A"
        RealmHelper.addSubject(emA)
        let emB = Subject()
        emB.yearGroup = "7C"
        emB.name = "English/Maths B"
        RealmHelper.addSubject(emB)
        let cn = Subject()
        cn.yearGroup = "7C"
        cn.name = "Chinese"
        RealmHelper.addSubject(cn)
        let cs = Subject()
        cs.yearGroup = "7C"
        cs.name = "Chinese Studies"
        RealmHelper.addSubject(cs)
        let mb = Subject()
        mb.yearGroup = "7C"
        mb.name = "Morning Break"
        RealmHelper.addSubject(mb)
        let lt = Subject()
        lt.yearGroup = "7C"
        lt.name = "Lunch Time"
        RealmHelper.addSubject(lt)
        let hu = Subject()
        hu.yearGroup = "7C"
        hu.name = "Humanities"
        hu.roomNumber = "A203"
        RealmHelper.addSubject(hu)
        let sc = Subject()
        sc.yearGroup = "7C"
        sc.name = "Science"
        sc.roomNumber = "A310"
        RealmHelper.addSubject(sc)
        let Music = Subject()
        Music.yearGroup = "7C"
        Music.name = "Music"
        Music.roomNumber = "B313"
        RealmHelper.addSubject(Music)
        let Art = Subject()
        Art.yearGroup = "7C"
        Art.name = "Art"
        Art.roomNumber = "B113"
        RealmHelper.addSubject(Art)
        let Comp = Subject()
        Comp.yearGroup = "7C"
        Comp.name = "Computing"
        Comp.roomNumber = "C205"
        RealmHelper.addSubject(Comp)
        let dt = Subject()
        dt.yearGroup = "7C"
        dt.name = "D&T"
        dt.roomNumber = "C101"
        RealmHelper.addSubject(dt)
        let pe = Subject()
        pe.yearGroup = "7C"
        pe.name = "Physical Education"
        pe.roomNumber = "Field"
        RealmHelper.addSubject(pe)
        let ce = Subject()
        ce.yearGroup = "7C"
        ce.name = "Character Education"
        ce.roomNumber = "A218"
        RealmHelper.addSubject(ce)
        let cp = Subject()
        cp.yearGroup = "7C"
        cp.name = "Community Period"
        cp.roomNumber = "A315"
        RealmHelper.addSubject(cp)
    }
    static func Y7DSetUp() {
        let emA = Subject()
        emA.yearGroup = "7D"
        emA.name = "English/Maths A"
        RealmHelper.addSubject(emA)
        let emB = Subject()
        emB.yearGroup = "7D"
        emB.name = "English/Maths B"
        RealmHelper.addSubject(emB)
        let cn = Subject()
        cn.yearGroup = "7D"
        cn.name = "Chinese"
        RealmHelper.addSubject(cn)
        let cs = Subject()
        cs.yearGroup = "7D"
        cs.name = "Chinese Studies"
        RealmHelper.addSubject(cs)
        let mb = Subject()
        mb.yearGroup = "7D"
        mb.name = "Morning Break"
        RealmHelper.addSubject(mb)
        let lt = Subject()
        lt.yearGroup = "7D"
        lt.name = "Lunch Time"
        RealmHelper.addSubject(lt)
        let hu = Subject()
        hu.yearGroup = "7D"
        hu.name = "Humanities"
        hu.roomNumber = "A202"
        RealmHelper.addSubject(hu)
        let sc = Subject()
        sc.yearGroup = "7D"
        sc.name = "Science"
        sc.roomNumber = "A312"
        RealmHelper.addSubject(sc)
        let Music = Subject()
        Music.yearGroup = "7D"
        Music.name = "Music"
        Music.roomNumber = "B313"
        RealmHelper.addSubject(Music)
        let Art = Subject()
        Art.yearGroup = "7D"
        Art.name = "Art"
        Art.roomNumber = "B114b"
        RealmHelper.addSubject(Art)
        let Comp = Subject()
        Comp.yearGroup = "7D"
        Comp.name = "Computing"
        Comp.roomNumber = "C204"
        RealmHelper.addSubject(Comp)
        let dt = Subject()
        dt.yearGroup = "7D"
        dt.name = "D&T"
        dt.roomNumber = "C103"
        RealmHelper.addSubject(dt)
        let pe = Subject()
        pe.yearGroup = "7D"
        pe.name = "Physical Education"
        pe.roomNumber = "Field"
        RealmHelper.addSubject(pe)
        let ce = Subject()
        ce.yearGroup = "7D"
        ce.name = "Character Education"
        ce.roomNumber = "A218"
        RealmHelper.addSubject(ce)
        let cp = Subject()
        cp.yearGroup = "7D"
        cp.name = "Community Period"
        cp.roomNumber = "A315"
        RealmHelper.addSubject(cp)
    }
    static func Y7ESetUp() {
        let emA = Subject()
        emA.yearGroup = "7E"
        emA.name = "English/Maths A"
        RealmHelper.addSubject(emA)
        let emB = Subject()
        emB.yearGroup = "7E"
        emB.name = "English/Maths B"
        RealmHelper.addSubject(emB)
        let cn = Subject()
        cn.yearGroup = "7E"
        cn.name = "Chinese"
        RealmHelper.addSubject(cn)
        let cs = Subject()
        cs.yearGroup = "7E"
        cs.name = "Chinese Studies"
        RealmHelper.addSubject(cs)
        let mb = Subject()
        mb.yearGroup = "7E"
        mb.name = "Morning Break"
        RealmHelper.addSubject(mb)
        let lt = Subject()
        lt.yearGroup = "7E"
        lt.name = "Lunch Time"
        RealmHelper.addSubject(lt)
        let hu = Subject()
        hu.yearGroup = "7E"
        hu.name = "Humanities"
        hu.roomNumber = "A203"
        RealmHelper.addSubject(hu)
        let sc = Subject()
        sc.yearGroup = "7E"
        sc.name = "Science"
        sc.roomNumber = "A303"
        RealmHelper.addSubject(sc)
        let Music = Subject()
        Music.yearGroup = "7E"
        Music.name = "Music"
        Music.roomNumber = "B313"
        RealmHelper.addSubject(Music)
        let Art = Subject()
        Art.yearGroup = "7E"
        Art.name = "Art"
        Art.roomNumber = "B113"
        RealmHelper.addSubject(Art)
        let Comp = Subject()
        Comp.yearGroup = "7E"
        Comp.name = "Computing"
        Comp.roomNumber = "C205"
        RealmHelper.addSubject(Comp)
        let dt = Subject()
        dt.yearGroup = "7E"
        dt.name = "D&T"
        dt.roomNumber = "C101"
        RealmHelper.addSubject(dt)
        let pe = Subject()
        pe.yearGroup = "7E"
        pe.name = "Physical Education"
        pe.roomNumber = "Field"
        RealmHelper.addSubject(pe)
        let ce = Subject()
        ce.yearGroup = "7E"
        ce.name = "Character Education"
        ce.roomNumber = "A218"
        RealmHelper.addSubject(ce)
        let cp = Subject()
        cp.yearGroup = "7E"
        cp.name = "Community Period"
        cp.roomNumber = "A315"
        RealmHelper.addSubject(cp)
        let eip = Subject()
        eip.yearGroup = "7E"
        eip.name = "English Intensive Programme"
        eip.roomNumber = "B101"
        RealmHelper.addSubject(eip)
    }
    // Y8 Set Up
    static func Y8ASetUp() {
        let emA = Subject()
        emA.yearGroup = "8A"
        emA.name = "English/Maths A"
        RealmHelper.addSubject(emA)
        let emB = Subject()
        emB.yearGroup = "8A"
        emB.name = "English/Maths B"
        RealmHelper.addSubject(emB)
        let cn = Subject()
        cn.yearGroup = "8A"
        cn.name = "Chinese"
        RealmHelper.addSubject(cn)
        let cs = Subject()
        cs.yearGroup = "8A"
        cs.name = "Chinese Studies"
        RealmHelper.addSubject(cs)
        let mb = Subject()
        mb.yearGroup = "8A"
        mb.name = "Morning Break"
        RealmHelper.addSubject(mb)
        let lt = Subject()
        lt.yearGroup = "8A"
        lt.name = "Lunch Time"
        RealmHelper.addSubject(lt)
        let hu = Subject()
        hu.yearGroup = "8A"
        hu.name = "Humanities"
        hu.roomNumber = "A106"
        RealmHelper.addSubject(hu)
        let sc = Subject()
        sc.yearGroup = "8A"
        sc.name = "Science"
        sc.roomNumber = "A311"
        RealmHelper.addSubject(sc)
        let Music = Subject()
        Music.yearGroup = "8A"
        Music.name = "Music"
        Music.roomNumber = "B313"
        RealmHelper.addSubject(Music)
        let Art = Subject()
        Art.yearGroup = "8A"
        Art.name = "Art"
        Art.roomNumber = "B114b"
        RealmHelper.addSubject(Art)
        let Comp = Subject()
        Comp.yearGroup = "8A"
        Comp.name = "Computing"
        Comp.roomNumber = "C205"
        RealmHelper.addSubject(Comp)
        let dt = Subject()
        dt.yearGroup = "8A"
        dt.name = "D&T"
        dt.roomNumber = "C102"
        RealmHelper.addSubject(dt)
        let pe = Subject()
        pe.yearGroup = "8A"
        pe.name = "Physical Education"
        pe.roomNumber = "Field"
        RealmHelper.addSubject(pe)
        let ce = Subject()
        ce.yearGroup = "8A"
        ce.name = "Character Education"
        ce.roomNumber = "A218"
        RealmHelper.addSubject(ce)
        let cp = Subject()
        cp.yearGroup = "8A"
        cp.name = "Community Period"
        cp.roomNumber = "A315"
        RealmHelper.addSubject(cp)
    }
    static func Y8BSetUp() {
        let emA = Subject()
        emA.yearGroup = "8B"
        emA.name = "English/Maths A"
        RealmHelper.addSubject(emA)
        let emB = Subject()
        emB.yearGroup = "8B"
        emB.name = "English/Maths B"
        RealmHelper.addSubject(emB)
        let cn = Subject()
        cn.yearGroup = "8B"
        cn.name = "Chinese"
        RealmHelper.addSubject(cn)
        let cs = Subject()
        cs.yearGroup = "8B"
        cs.name = "Chinese Studies"
        RealmHelper.addSubject(cs)
        let mb = Subject()
        mb.yearGroup = "8B"
        mb.name = "Morning Break"
        RealmHelper.addSubject(mb)
        let lt = Subject()
        lt.yearGroup = "8B"
        lt.name = "Lunch Time"
        RealmHelper.addSubject(lt)
        let hu = Subject()
        hu.yearGroup = "8B"
        hu.name = "Humanities"
        hu.roomNumber = "A202"
        RealmHelper.addSubject(hu)
        let sc = Subject()
        sc.yearGroup = "8B"
        sc.name = "Science"
        sc.roomNumber = "A312"
        RealmHelper.addSubject(sc)
        let Music = Subject()
        Music.yearGroup = "8B"
        Music.name = "Music"
        Music.roomNumber = "B313"
        RealmHelper.addSubject(Music)
        let Art = Subject()
        Art.yearGroup = "8B"
        Art.name = "Art"
        Art.roomNumber = "B114b"
        RealmHelper.addSubject(Art)
        let Comp = Subject()
        Comp.yearGroup = "8B"
        Comp.name = "Computing"
        Comp.roomNumber = "C205"
        RealmHelper.addSubject(Comp)
        let dt = Subject()
        dt.yearGroup = "8B"
        dt.name = "D&T"
        dt.roomNumber = "C101"
        RealmHelper.addSubject(dt)
        let pe = Subject()
        pe.yearGroup = "8B"
        pe.name = "Physical Education"
        pe.roomNumber = "Field"
        RealmHelper.addSubject(pe)
        let ce = Subject()
        ce.yearGroup = "8B"
        ce.name = "Character Education"
        ce.roomNumber = "A218"
        RealmHelper.addSubject(ce)
        let cp = Subject()
        cp.yearGroup = "8B"
        cp.name = "Community Period"
        cp.roomNumber = "A315"
        RealmHelper.addSubject(cp)
    }
    static func Y8CSetUp() {
        let emA = Subject()
        emA.yearGroup = "8C"
        emA.name = "English/Maths A"
        RealmHelper.addSubject(emA)
        let emB = Subject()
        emB.yearGroup = "8C"
        emB.name = "English/Maths B"
        RealmHelper.addSubject(emB)
        let cn = Subject()
        cn.yearGroup = "8C"
        cn.name = "Chinese"
        RealmHelper.addSubject(cn)
        let cs = Subject()
        cs.yearGroup = "8C"
        cs.name = "Chinese Studies"
        RealmHelper.addSubject(cs)
        let mb = Subject()
        mb.yearGroup = "8C"
        mb.name = "Morning Break"
        RealmHelper.addSubject(mb)
        let lt = Subject()
        lt.yearGroup = "8C"
        lt.name = "Lunch Time"
        RealmHelper.addSubject(lt)
        let hu = Subject()
        hu.yearGroup = "8C"
        hu.name = "Humanities"
        hu.roomNumber = "A203"
        RealmHelper.addSubject(hu)
        let sc = Subject()
        sc.yearGroup = "8C"
        sc.name = "Science"
        sc.roomNumber = "A301"
        RealmHelper.addSubject(sc)
        let Music = Subject()
        Music.yearGroup = "8C"
        Music.name = "Music"
        Music.roomNumber = "B313"
        RealmHelper.addSubject(Music)
        let Art = Subject()
        Art.yearGroup = "8C"
        Art.name = "Art"
        Art.roomNumber = "B114b"
        RealmHelper.addSubject(Art)
        let Comp = Subject()
        Comp.yearGroup = "8C"
        Comp.name = "Computing"
        Comp.roomNumber = "C205"
        RealmHelper.addSubject(Comp)
        let dt = Subject()
        dt.yearGroup = "8C"
        dt.name = "D&T"
        dt.roomNumber = "C101"
        RealmHelper.addSubject(dt)
        let pe = Subject()
        pe.yearGroup = "8C"
        pe.name = "Physical Education"
        pe.roomNumber = "Field"
        RealmHelper.addSubject(pe)
        let ce = Subject()
        ce.yearGroup = "8C"
        ce.name = "Character Education"
        ce.roomNumber = "A218"
        RealmHelper.addSubject(ce)
        let cp = Subject()
        cp.yearGroup = "8C"
        cp.name = "Community Period"
        cp.roomNumber = "A315"
        RealmHelper.addSubject(cp)
    }
    static func Y8DSetUp() {
        let emA = Subject()
        emA.yearGroup = "8D"
        emA.name = "English/Maths A"
        RealmHelper.addSubject(emA)
        let emB = Subject()
        emB.yearGroup = "8D"
        emB.name = "English/Maths B"
        RealmHelper.addSubject(emB)
        let cn = Subject()
        cn.yearGroup = "8D"
        cn.name = "Chinese"
        RealmHelper.addSubject(cn)
        let cs = Subject()
        cs.yearGroup = "8D"
        cs.name = "Chinese Studies"
        RealmHelper.addSubject(cs)
        let mb = Subject()
        mb.yearGroup = "8D"
        mb.name = "Morning Break"
        RealmHelper.addSubject(mb)
        let lt = Subject()
        lt.yearGroup = "8D"
        lt.name = "Lunch Time"
        RealmHelper.addSubject(lt)
        let hu = Subject()
        hu.yearGroup = "8D"
        hu.name = "Humanities"
        hu.roomNumber = "A202"
        RealmHelper.addSubject(hu)
        let sc = Subject()
        sc.yearGroup = "8D"
        sc.name = "Science"
        sc.roomNumber = "A302"
        RealmHelper.addSubject(sc)
        let Music = Subject()
        Music.yearGroup = "8D"
        Music.name = "Music"
        Music.roomNumber = "B314"
        RealmHelper.addSubject(Music)
        let Art = Subject()
        Art.yearGroup = "8D"
        Art.name = "Art"
        Art.roomNumber = "B114b"
        RealmHelper.addSubject(Art)
        let Comp = Subject()
        Comp.yearGroup = "8D"
        Comp.name = "Computing"
        Comp.roomNumber = "C204"
        RealmHelper.addSubject(Comp)
        let dt = Subject()
        dt.yearGroup = "8D"
        dt.name = "D&T"
        dt.roomNumber = "C102"
        RealmHelper.addSubject(dt)
        let pe = Subject()
        pe.yearGroup = "8D"
        pe.name = "Physical Education"
        pe.roomNumber = "Field"
        RealmHelper.addSubject(pe)
        let ce = Subject()
        ce.yearGroup = "8D"
        ce.name = "Character Education"
        ce.roomNumber = "A218"
        RealmHelper.addSubject(ce)
        let cp = Subject()
        cp.yearGroup = "8D"
        cp.name = "Community Period"
        cp.roomNumber = "A315"
        RealmHelper.addSubject(cp)
    }
    // Y9 Set Up
    static func Y9ASetUp() {
        let emA = Subject()
        emA.yearGroup = "9A"
        emA.name = "English/Maths A"
        RealmHelper.addSubject(emA)
        let emB = Subject()
        emB.yearGroup = "9A"
        emB.name = "English/Maths B"
        RealmHelper.addSubject(emB)
        let cn = Subject()
        cn.yearGroup = "9A"
        cn.name = "Chinese"
        RealmHelper.addSubject(cn)
        let cs = Subject()
        cs.yearGroup = "9A"
        cs.name = "Chinese Studies"
        RealmHelper.addSubject(cs)
        let mb = Subject()
        mb.yearGroup = "9A"
        mb.name = "Morning Break"
        RealmHelper.addSubject(mb)
        let lt = Subject()
        lt.yearGroup = "9A"
        lt.name = "Lunch Time"
        RealmHelper.addSubject(lt)
        let hi = Subject()
        hi.yearGroup = "9A"
        hi.name = "History"
        hi.roomNumber = "A105"
        RealmHelper.addSubject(hi)
        let ge = Subject()
        ge.yearGroup = "9A"
        ge.name = "Geography"
        ge.roomNumber = "A108"
        RealmHelper.addSubject(ge)
        let sc = Subject()
        sc.yearGroup = "9A"
        sc.name = "Science"
        sc.roomNumber = "A311"
        RealmHelper.addSubject(sc)
        let Music = Subject()
        Music.yearGroup = "9A"
        Music.name = "Music"
        Music.roomNumber = "B315"
        RealmHelper.addSubject(Music)
        let Art = Subject()
        Art.yearGroup = "9A"
        Art.name = "Art"
        Art.roomNumber = "B114b"
        RealmHelper.addSubject(Art)
        let Comp = Subject()
        Comp.yearGroup = "9A"
        Comp.name = "Computing"
        Comp.roomNumber = "C204"
        RealmHelper.addSubject(Comp)
        let dt = Subject()
        dt.yearGroup = "9A"
        dt.name = "D&T"
        dt.roomNumber = "C101"
        RealmHelper.addSubject(dt)
        let dr = Subject()
        dr.yearGroup = "9A"
        dr.name = "Drama"
        dr.roomNumber = "B315"
        RealmHelper.addSubject(dr)
        let pe = Subject()
        pe.yearGroup = "9A"
        pe.name = "Physical Education"
        pe.roomNumber = "Field"
        RealmHelper.addSubject(pe)
        let ce = Subject()
        ce.yearGroup = "9A"
        ce.name = "Character Education"
        ce.roomNumber = "A218"
        RealmHelper.addSubject(ce)
        let cp = Subject()
        cp.yearGroup = "9A"
        cp.name = "Community Period"
        cp.roomNumber = "A315"
        RealmHelper.addSubject(cp)
    }
    static func Y9BSetUp() {
        let emA = Subject()
        emA.yearGroup = "9B"
        emA.name = "English/Maths A"
        RealmHelper.addSubject(emA)
        let emB = Subject()
        emB.yearGroup = "9B"
        emB.name = "English/Maths B"
        RealmHelper.addSubject(emB)
        let cn = Subject()
        cn.yearGroup = "9B"
        cn.name = "Chinese"
        RealmHelper.addSubject(cn)
        let cs = Subject()
        cs.yearGroup = "9B"
        cs.name = "Chinese Studies"
        RealmHelper.addSubject(cs)
        let mb = Subject()
        mb.yearGroup = "9B"
        mb.name = "Morning Break"
        RealmHelper.addSubject(mb)
        let lt = Subject()
        lt.yearGroup = "9B"
        lt.name = "Lunch Time"
        RealmHelper.addSubject(lt)
        let hi = Subject()
        hi.yearGroup = "9B"
        hi.name = "History"
        hi.roomNumber = "A211"
        RealmHelper.addSubject(hi)
        let ge = Subject()
        ge.yearGroup = "9B"
        ge.name = "Geography"
        ge.roomNumber = "A108"
        RealmHelper.addSubject(ge)
        let sc = Subject()
        sc.yearGroup = "9B"
        sc.name = "Science"
        sc.roomNumber = "A301"
        RealmHelper.addSubject(sc)
        let Music = Subject()
        Music.yearGroup = "9B"
        Music.name = "Music"
        Music.roomNumber = "B314"
        RealmHelper.addSubject(Music)
        let Art = Subject()
        Art.yearGroup = "9B"
        Art.name = "Art"
        Art.roomNumber = "B114b"
        RealmHelper.addSubject(Art)
        let Comp = Subject()
        Comp.yearGroup = "9B"
        Comp.name = "Computing"
        Comp.roomNumber = "C101"
        RealmHelper.addSubject(Comp)
        let dt = Subject()
        dt.yearGroup = "9B"
        dt.name = "D&T"
        dt.roomNumber = "C101"
        RealmHelper.addSubject(dt)
        let dr = Subject()
        dr.yearGroup = "9B"
        dr.name = "Drama"
        dr.roomNumber = "B315"
        RealmHelper.addSubject(dr)
        let pe = Subject()
        pe.yearGroup = "9B"
        pe.name = "Physical Education"
        pe.roomNumber = "Field"
        RealmHelper.addSubject(pe)
        let ce = Subject()
        ce.yearGroup = "9B"
        ce.name = "Character Education"
        ce.roomNumber = "A218"
        RealmHelper.addSubject(ce)
        let cp = Subject()
        cp.yearGroup = "9B"
        cp.name = "Community Period"
        cp.roomNumber = "A315"
        RealmHelper.addSubject(cp)
    }
    static func Y9CSetUp() {
        let emA = Subject()
        emA.yearGroup = "9C"
        emA.name = "English/Maths A"
        RealmHelper.addSubject(emA)
        let emB = Subject()
        emB.yearGroup = "9C"
        emB.name = "English/Maths B"
        RealmHelper.addSubject(emB)
        let cn = Subject()
        cn.yearGroup = "9C"
        cn.name = "Chinese"
        RealmHelper.addSubject(cn)
        let cs = Subject()
        cs.yearGroup = "9C"
        cs.name = "Chinese Studies"
        RealmHelper.addSubject(cs)
        let mb = Subject()
        mb.yearGroup = "9C"
        mb.name = "Morning Break"
        RealmHelper.addSubject(mb)
        let lt = Subject()
        lt.yearGroup = "9C"
        lt.name = "Lunch Time"
        RealmHelper.addSubject(lt)
        let hi = Subject()
        hi.yearGroup = "9C"
        hi.name = "History"
        hi.roomNumber = "A105"
        RealmHelper.addSubject(hi)
        let ge = Subject()
        ge.yearGroup = "9C"
        ge.name = "Geography"
        ge.roomNumber = "A201"
        RealmHelper.addSubject(ge)
        let sc = Subject()
        sc.yearGroup = "9C"
        sc.name = "Science"
        sc.roomNumber = "A303"
        RealmHelper.addSubject(sc)
        let Music = Subject()
        Music.yearGroup = "9C"
        Music.name = "Music"
        Music.roomNumber = "B314"
        RealmHelper.addSubject(Music)
        let Art = Subject()
        Art.yearGroup = "9C"
        Art.name = "Art"
        Art.roomNumber = "B114b"
        RealmHelper.addSubject(Art)
        let Comp = Subject()
        Comp.yearGroup = "9C"
        Comp.name = "Computing"
        Comp.roomNumber = "C204"
        RealmHelper.addSubject(Comp)
        let dt = Subject()
        dt.yearGroup = "9C"
        dt.name = "D&T"
        dt.roomNumber = "C101"
        RealmHelper.addSubject(dt)
        let dr = Subject()
        dr.yearGroup = "9C"
        dr.name = "Drama"
        dr.roomNumber = "A109"
        RealmHelper.addSubject(dr)
        let pe = Subject()
        pe.yearGroup = "9C"
        pe.name = "Physical Education"
        pe.roomNumber = "Field"
        RealmHelper.addSubject(pe)
        let ce = Subject()
        ce.yearGroup = "9C"
        ce.name = "Character Education"
        ce.roomNumber = "A218"
        RealmHelper.addSubject(ce)
        let cp = Subject()
        cp.yearGroup = "9C"
        cp.name = "Community Period"
        cp.roomNumber = "A315"
        RealmHelper.addSubject(cp)
    }
    static func Y9DSetUp() {
        let emA = Subject()
        emA.yearGroup = "9D"
        emA.name = "English/Maths A"
        RealmHelper.addSubject(emA)
        let emB = Subject()
        emB.yearGroup = "9D"
        emB.name = "English/Maths B"
        RealmHelper.addSubject(emB)
        let cn = Subject()
        cn.yearGroup = "9D"
        cn.name = "Chinese"
        RealmHelper.addSubject(cn)
        let cs = Subject()
        cs.yearGroup = "9D"
        cs.name = "Chinese Studies"
        RealmHelper.addSubject(cs)
        let mb = Subject()
        mb.yearGroup = "9D"
        mb.name = "Morning Break"
        RealmHelper.addSubject(mb)
        let lt = Subject()
        lt.yearGroup = "9D"
        lt.name = "Lunch Time"
        RealmHelper.addSubject(lt)
        let hi = Subject()
        hi.yearGroup = "9D"
        hi.name = "History"
        hi.roomNumber = "A106"
        RealmHelper.addSubject(hi)
        let ge = Subject()
        ge.yearGroup = "9D"
        ge.name = "Geography"
        ge.roomNumber = "A108"
        RealmHelper.addSubject(ge)
        let sc = Subject()
        sc.yearGroup = "9D"
        sc.name = "Science"
        sc.roomNumber = "A302"
        RealmHelper.addSubject(sc)
        let Music = Subject()
        Music.yearGroup = "9D"
        Music.name = "Music"
        Music.roomNumber = "B314"
        RealmHelper.addSubject(Music)
        let Art = Subject()
        Art.yearGroup = "9D"
        Art.name = "Art"
        Art.roomNumber = "B113"
        RealmHelper.addSubject(Art)
        let Comp = Subject()
        Comp.yearGroup = "9D"
        Comp.name = "Computing"
        Comp.roomNumber = "C204"
        RealmHelper.addSubject(Comp)
        let dt = Subject()
        dt.yearGroup = "9D"
        dt.name = "D&T"
        dt.roomNumber = "C101"
        RealmHelper.addSubject(dt)
        let dr = Subject()
        dr.yearGroup = "9D"
        dr.name = "Drama"
        dr.roomNumber = "B314"
        RealmHelper.addSubject(dr)
        let pe = Subject()
        pe.yearGroup = "9D"
        pe.name = "Physical Education"
        pe.roomNumber = "Field"
        RealmHelper.addSubject(pe)
        let ce = Subject()
        ce.yearGroup = "9D"
        ce.name = "Character Education"
        ce.roomNumber = "A218"
        RealmHelper.addSubject(ce)
        let cp = Subject()
        cp.yearGroup = "9D"
        cp.name = "Community Period"
        cp.roomNumber = "A315"
        RealmHelper.addSubject(cp)
    }
    // Y10 Set Up
    static func Y10SetUp(_ yearGroup: String) {
        let enma = Subject()
        enma.yearGroup = yearGroup
        enma.name = "English/Maths"
        RealmHelper.addSubject(enma)
        let cn = Subject()
        cn.yearGroup = yearGroup
        cn.name = "Chinese"
        RealmHelper.addSubject(cn)
        let mb = Subject()
        mb.yearGroup = yearGroup
        mb.name = "Morning Break"
        RealmHelper.addSubject(mb)
        let lt = Subject()
        lt.yearGroup = yearGroup
        lt.name = "Lunch Time"
        RealmHelper.addSubject(lt)
        let bu1 = Subject()
        bu1.yearGroup = yearGroup
        bu1.name = "Business Studies 1"
        RealmHelper.addSubject(bu1)
        let bu2 = Subject()
        bu2.yearGroup = yearGroup
        bu2.name = "Business Studies 2"
        RealmHelper.addSubject(bu2)
        let bu3 = Subject()
        bu3.yearGroup = yearGroup
        bu3.name = "Business Studies 3"
        RealmHelper.addSubject(bu3)
        let ec1 = Subject()
        ec1.yearGroup = yearGroup
        ec1.name = "Economics 1"
        RealmHelper.addSubject(ec1)
        let ec2 = Subject()
        ec2.yearGroup = yearGroup
        ec2.name = "Economics 2"
        RealmHelper.addSubject(ec2)
        let ec3 = Subject()
        ec3.yearGroup = yearGroup
        ec3.name = "Economics 3"
        RealmHelper.addSubject(ec3)
        let ent = Subject()
        ent.yearGroup = yearGroup
        ent.name = "Enterprise"
        RealmHelper.addSubject(ent)
        let hi = Subject()
        hi.yearGroup = yearGroup
        hi.name = "History"
        RealmHelper.addSubject(hi)
        let ge = Subject()
        ge.yearGroup = yearGroup
        ge.name = "Geography"
        RealmHelper.addSubject(ge)
        let cmsc = Subject()
        cmsc.yearGroup = yearGroup
        cmsc.name = "Combined Science"
        RealmHelper.addSubject(cmsc)
        let phy = Subject()
        phy.yearGroup = yearGroup
        phy.name = "Physics"
        RealmHelper.addSubject(phy)
        let chem = Subject()
        chem.yearGroup = yearGroup
        chem.name = "Chemistry"
        RealmHelper.addSubject(chem)
        let bio = Subject()
        bio.yearGroup = yearGroup
        bio.name = "Biology"
        RealmHelper.addSubject(bio)
        let Music = Subject()
        Music.yearGroup = yearGroup
        Music.name = "Music"
        RealmHelper.addSubject(Music)
        let va1 = Subject()
        va1.yearGroup = yearGroup
        va1.name = "Visual Art 1"
        RealmHelper.addSubject(va1)
        let va2 = Subject()
        va2.yearGroup = yearGroup
        va2.name = "Visual Art 2"
        RealmHelper.addSubject(va2)
        let Comp = Subject()
        Comp.yearGroup = yearGroup
        Comp.name = "Computer Science"
        RealmHelper.addSubject(Comp)
        let dtgp = Subject()
        dtgp.yearGroup = yearGroup
        dtgp.name = "DT GP"
        RealmHelper.addSubject(dtgp)
        let dtrm = Subject()
        dtrm.yearGroup = yearGroup
        dtrm.name = "DT RM"
        RealmHelper.addSubject(dtrm)
        let dr = Subject()
        dr.yearGroup = yearGroup
        dr.name = "Drama"
        RealmHelper.addSubject(dr)
        let pe = Subject()
        pe.yearGroup = yearGroup
        pe.name = "Physical Education"
        RealmHelper.addSubject(pe)
        let ce = Subject()
        ce.yearGroup = yearGroup
        ce.name = "Character Education"
        RealmHelper.addSubject(ce)
        let gp = Subject()
        gp.yearGroup = yearGroup
        gp.name = "Global Perspectives"
        RealmHelper.addSubject(gp)
        let ugo = Subject()
        ugo.yearGroup = yearGroup
        ugo.name = "UGO"
        RealmHelper.addSubject(ugo)
        let cp = Subject()
        cp.yearGroup = yearGroup
        cp.name = "Community Period"
        RealmHelper.addSubject(cp)
    }
    // Y11 Set Up
    static func Y11SetUp(_ yearGroup: String) {
        let enma = Subject()
        enma.yearGroup = yearGroup
        enma.name = "English/Maths"
        RealmHelper.addSubject(enma)
        let cn = Subject()
        cn.yearGroup = yearGroup
        cn.name = "Chinese"
        RealmHelper.addSubject(cn)
        let mb = Subject()
        mb.yearGroup = yearGroup
        mb.name = "Morning Break"
        RealmHelper.addSubject(mb)
        let lt = Subject()
        lt.yearGroup = yearGroup
        lt.name = "Lunch Time"
        RealmHelper.addSubject(lt)
        let bu1 = Subject()
        bu1.yearGroup = yearGroup
        bu1.name = "Business Studies 1"
        RealmHelper.addSubject(bu1)
        let bu2 = Subject()
        bu2.yearGroup = yearGroup
        bu2.name = "Business Studies 2"
        RealmHelper.addSubject(bu2)
        let bu3 = Subject()
        bu3.yearGroup = yearGroup
        bu3.name = "Business Studies 3"
        RealmHelper.addSubject(bu3)
        let ec1 = Subject()
        ec1.yearGroup = yearGroup
        ec1.name = "Economics 1"
        RealmHelper.addSubject(ec1)
        let ec2 = Subject()
        ec2.yearGroup = yearGroup
        ec2.name = "Economics 2"
        RealmHelper.addSubject(ec2)
        let ec3 = Subject()
        ec3.yearGroup = yearGroup
        ec3.name = "Economics 3"
        RealmHelper.addSubject(ec3)
        let ent = Subject()
        ent.yearGroup = yearGroup
        ent.name = "Enterprise"
        RealmHelper.addSubject(ent)
        let hi = Subject()
        hi.yearGroup = yearGroup
        hi.name = "History"
        RealmHelper.addSubject(hi)
        let ge = Subject()
        ge.yearGroup = yearGroup
        ge.name = "Geography"
        RealmHelper.addSubject(ge)
        let cmsc = Subject()
        cmsc.yearGroup = yearGroup
        cmsc.name = "Combined Science"
        RealmHelper.addSubject(cmsc)
        let phy = Subject()
        phy.yearGroup = yearGroup
        phy.name = "Physics"
        RealmHelper.addSubject(phy)
        let chem = Subject()
        chem.yearGroup = yearGroup
        chem.name = "Chemistry"
        RealmHelper.addSubject(chem)
        let bio = Subject()
        bio.yearGroup = yearGroup
        bio.name = "Biology"
        RealmHelper.addSubject(bio)
        let Music = Subject()
        Music.yearGroup = yearGroup
        Music.name = "Music"
        RealmHelper.addSubject(Music)
        let artRA = Subject()
        artRA.yearGroup = yearGroup
        artRA.name = "Art (R.Augustin)"
        RealmHelper.addSubject(artRA)
        let artMC = Subject()
        artMC.yearGroup = yearGroup
        artMC.name = "Art (M.Cockram)"
        RealmHelper.addSubject(artMC)
        let Comp = Subject()
        Comp.yearGroup = yearGroup
        Comp.name = "Computer Science"
        RealmHelper.addSubject(Comp)
        let dtgr = Subject()
        dtgr.yearGroup = yearGroup
        dtgr.name = "DT (GR)"
        RealmHelper.addSubject(dtgr)
        let dt = Subject()
        dt.yearGroup = yearGroup
        dt.name = "DT"
        RealmHelper.addSubject(dt)
        let dr = Subject()
        dr.yearGroup = yearGroup
        dr.name = "Drama"
        RealmHelper.addSubject(dr)
        let pe = Subject()
        pe.yearGroup = yearGroup
        pe.name = "Physical Education"
        RealmHelper.addSubject(pe)
        let ce = Subject()
        ce.yearGroup = yearGroup
        ce.name = "Character Education"
        RealmHelper.addSubject(ce)
        let gp = Subject()
        gp.yearGroup = yearGroup
        gp.name = "Global Perspectives"
        RealmHelper.addSubject(gp)
        let ugo = Subject()
        ugo.yearGroup = yearGroup
        ugo.name = "UGO"
        RealmHelper.addSubject(ugo)
        let cp = Subject()
        cp.yearGroup = yearGroup
        cp.name = "Community Period"
        RealmHelper.addSubject(cp)
    }
    
    static func assignSubjectObject() {
        // loop through a two-dimensional array of subject names
        var x = 0
        while x < 6 {
            var y = 0
            while y < 9 {
                // check which class current user belongs to
                let result = RealmHelper.retrieveUsers()
                let subjects = RealmHelper.retrieveSubjects()
                if result[0].yearGroup == "7A" {
                    let periodName = ArrayFile.Y7AString[x][y]
                    for subject in subjects {
                        // based on the string array of subject names, create a new array of subject objects
                        if subject.name == periodName {
                            if ArrayFile.Y7AActual.count == x {
                                // if the schedule for an alphabetical day is filled, move on the next day
                                if ArrayFile.Y7AActual[x - 1].count == 9 {
                                    ArrayFile.Y7AActual.append([])
                                }
                            }
                            // add new Subject object to the array of subject objects
                            var tempArray = ArrayFile.Y7AActual[x]
                            tempArray.append(subject)
                            ArrayFile.Y7AActual[x] = tempArray
                        }
                    }
                } else if result[0].yearGroup == "7B" {
                    let periodName = ArrayFile.Y7BString[x][y]
                    for subject in subjects {
                        if subject.name == periodName {
                            if ArrayFile.Y7BActual.count == x {
                                if ArrayFile.Y7BActual[x - 1].count == 9 {
                                    ArrayFile.Y7BActual.append([])
                                }
                            }
                            var tempArray = ArrayFile.Y7BActual[x]
                            tempArray.append(subject)
                            ArrayFile.Y7BActual[x] = tempArray
                        }
                    }
                } else if result[0].yearGroup == "7C" {
                    let periodName = ArrayFile.Y7CString[x][y]
                    for subject in subjects {
                        if subject.name == periodName {
                            if ArrayFile.Y7CActual.count == x {
                                if ArrayFile.Y7CActual[x - 1].count == 9 {
                                    ArrayFile.Y7CActual.append([])
                                }
                            }
                            var tempArray = ArrayFile.Y7CActual[x]
                            tempArray.append(subject)
                            ArrayFile.Y7CActual[x] = tempArray
                        }
                    }
                } else if result[0].yearGroup == "7D" {
                    let periodName = ArrayFile.Y7DString[x][y]
                    for subject in subjects {
                        if subject.name == periodName {
                            if ArrayFile.Y7DActual.count == x {
                                if ArrayFile.Y7DActual[x - 1].count == 9 {
                                    ArrayFile.Y7DActual.append([])
                                }
                            }
                            var tempArray = ArrayFile.Y7DActual[x]
                            tempArray.append(subject)
                            ArrayFile.Y7DActual[x] = tempArray
                        }
                    }
                } else if result[0].yearGroup == "7E" {
                    let periodName = ArrayFile.Y7EString[x][y]
                    for subject in subjects {
                        if subject.name == periodName {
                            if ArrayFile.Y7EActual.count == x {
                                if ArrayFile.Y7EActual[x - 1].count == 9 {
                                    ArrayFile.Y7EActual.append([])
                                }
                            }
                            var tempArray = ArrayFile.Y7EActual[x]
                            tempArray.append(subject)
                            ArrayFile.Y7EActual[x] = tempArray
                        }
                    }
                } else if result[0].yearGroup == "8A" {
                    let periodName = ArrayFile.Y8AString[x][y]
                    for subject in subjects {
                        if subject.name == periodName {
                            if ArrayFile.Y8AActual.count == x {
                                if ArrayFile.Y8AActual[x - 1].count == 9 {
                                    ArrayFile.Y8AActual.append([])
                                }
                            }
                            var tempArray = ArrayFile.Y8AActual[x]
                            tempArray.append(subject)
                            ArrayFile.Y8AActual[x] = tempArray
                        }
                    }
                } else if result[0].yearGroup == "8B" {
                    let periodName = ArrayFile.Y8BString[x][y]
                    for subject in subjects {
                        if subject.name == periodName {
                            if ArrayFile.Y8BActual.count == x {
                                if ArrayFile.Y8BActual[x - 1].count == 9 {
                                    ArrayFile.Y8BActual.append([])
                                }
                            }
                            var tempArray = ArrayFile.Y8BActual[x]
                            tempArray.append(subject)
                            ArrayFile.Y8BActual[x] = tempArray
                        }
                    }
                } else if result[0].yearGroup == "8C" {
                    let periodName = ArrayFile.Y8CString[x][y]
                    for subject in subjects {
                        if subject.name == periodName {
                            if ArrayFile.Y8CActual.count == x {
                                if ArrayFile.Y8CActual[x - 1].count == 9 {
                                    ArrayFile.Y8CActual.append([])
                                }
                            }
                            var tempArray = ArrayFile.Y8CActual[x]
                            tempArray.append(subject)
                            ArrayFile.Y8CActual[x] = tempArray
                        }
                    }
                } else if result[0].yearGroup == "8D" {
                    let periodName = ArrayFile.Y8DString[x][y]
                    for subject in subjects {
                        if subject.name == periodName {
                            if ArrayFile.Y8DActual.count == x {
                                if ArrayFile.Y8DActual[x - 1].count == 9 {
                                    ArrayFile.Y8DActual.append([])
                                }
                            }
                            var tempArray = ArrayFile.Y8DActual[x]
                            tempArray.append(subject)
                            ArrayFile.Y8DActual[x] = tempArray
                        }
                    }
                } else if result[0].yearGroup == "9A" {
                    let periodName = ArrayFile.Y9AString[x][y]
                    for subject in subjects {
                        if subject.name == periodName {
                            if ArrayFile.Y9AActual.count == x {
                                if ArrayFile.Y9AActual[x - 1].count == 9 {
                                    ArrayFile.Y9AActual.append([])
                                }
                            }
                            var tempArray = ArrayFile.Y9AActual[x]
                            tempArray.append(subject)
                            ArrayFile.Y9AActual[x] = tempArray
                        }
                    }
                } else if result[0].yearGroup == "9B" {
                    let periodName = ArrayFile.Y9BString[x][y]
                    for subject in subjects {
                        if subject.name == periodName {
                            if ArrayFile.Y9BActual.count == x {
                                if ArrayFile.Y9BActual[x - 1].count == 9 {
                                    ArrayFile.Y9BActual.append([])
                                }
                            }
                            var tempArray = ArrayFile.Y9BActual[x]
                            tempArray.append(subject)
                            ArrayFile.Y9BActual[x] = tempArray
                        }
                    }
                } else if result[0].yearGroup == "9C" {
                    let periodName = ArrayFile.Y9CString[x][y]
                    for subject in subjects {
                        if subject.name == periodName {
                            if ArrayFile.Y9CActual.count == x {
                                if ArrayFile.Y9CActual[x - 1].count == 9 {
                                    ArrayFile.Y9CActual.append([])
                                }
                            }
                            var tempArray = ArrayFile.Y9CActual[x]
                            tempArray.append(subject)
                            ArrayFile.Y9CActual[x] = tempArray
                        }
                    }
                } else if result[0].yearGroup == "9D" {
                    let periodName = ArrayFile.Y9DString[x][y]
                    for subject in subjects {
                        if subject.name == periodName {
                            if ArrayFile.Y9DActual.count == x {
                                if ArrayFile.Y9DActual[x - 1].count == 9 {
                                    ArrayFile.Y9DActual.append([])
                                }
                            }
                            var tempArray = ArrayFile.Y9DActual[x]
                            tempArray.append(subject)
                            ArrayFile.Y9DActual[x] = tempArray
                        }
                    }
                } else if result[0].yearGroup == "10A" {
                    let periodName = ArrayFile.Y10AString[x][y]
                    for subject in subjects {
                        if subject.name == periodName {
                            if ArrayFile.Y10AActual.count == x {
                                if ArrayFile.Y10AActual[x - 1].count == 9 {
                                    ArrayFile.Y10AActual.append([])
                                }
                            }
                            var tempArray = ArrayFile.Y10AActual[x]
                            tempArray.append(subject)
                            ArrayFile.Y10AActual[x] = tempArray
                        }
                    }
                } else if result[0].yearGroup == "10B" {
                    let periodName = ArrayFile.Y10BString[x][y]
                    for subject in subjects {
                        if subject.name == periodName {
                            if ArrayFile.Y10BActual.count == x {
                                if ArrayFile.Y10BActual[x - 1].count == 9 {
                                    ArrayFile.Y10BActual.append([])
                                }
                            }
                            var tempArray = ArrayFile.Y10BActual[x]
                            tempArray.append(subject)
                            ArrayFile.Y10BActual[x] = tempArray
                        }
                    }
                } else if result[0].yearGroup == "10C" {
                    let periodName = ArrayFile.Y10CString[x][y]
                    for subject in subjects {
                        if subject.name == periodName {
                            if ArrayFile.Y10CActual.count == x {
                                if ArrayFile.Y10CActual[x - 1].count == 9 {
                                    ArrayFile.Y10CActual.append([])
                                }
                            }
                            var tempArray = ArrayFile.Y10CActual[x]
                            tempArray.append(subject)
                            ArrayFile.Y10CActual[x] = tempArray
                        }
                    }
                } else if result[0].yearGroup == "10D" {
                    let periodName = ArrayFile.Y10DString[x][y]
                    for subject in subjects {
                        if subject.name == periodName {
                            if ArrayFile.Y10DActual.count == x {
                                if ArrayFile.Y10DActual[x - 1].count == 9 {
                                    ArrayFile.Y10DActual.append([])
                                }
                            }
                            var tempArray = ArrayFile.Y10DActual[x]
                            tempArray.append(subject)
                            ArrayFile.Y10DActual[x] = tempArray
                        }
                    }
                } else if result[0].yearGroup == "11A" {
                    let periodName = ArrayFile.Y11AString[x][y]
                    for subject in subjects {
                        if subject.name == periodName {
                            if ArrayFile.Y11AActual.count == x {
                                if ArrayFile.Y11AActual[x - 1].count == 9 {
                                    ArrayFile.Y11AActual.append([])
                                }
                            }
                            var tempArray = ArrayFile.Y11AActual[x]
                            tempArray.append(subject)
                            ArrayFile.Y11AActual[x] = tempArray
                        }
                    }
                } else if result[0].yearGroup == "11B" {
                    let periodName = ArrayFile.Y11BString[x][y]
                    for subject in subjects {
                        if subject.name == periodName {
                            if ArrayFile.Y11BActual.count == x {
                                if ArrayFile.Y11BActual[x - 1].count == 9 {
                                    ArrayFile.Y11BActual.append([])
                                }
                            }
                            var tempArray = ArrayFile.Y11BActual[x]
                            tempArray.append(subject)
                            ArrayFile.Y11BActual[x] = tempArray
                        }
                    }
                } else if result[0].yearGroup == "11C" {
                    let periodName = ArrayFile.Y11CString[x][y]
                    for subject in subjects {
                        if subject.name == periodName {
                            if ArrayFile.Y11CActual.count == x {
                                if ArrayFile.Y11CActual[x - 1].count == 9 {
                                    ArrayFile.Y11CActual.append([])
                                }
                            }
                            var tempArray = ArrayFile.Y11CActual[x]
                            tempArray.append(subject)
                            ArrayFile.Y11CActual[x] = tempArray
                        }
                    }
                } else if result[0].yearGroup == "11D" {
                    let periodName = ArrayFile.Y11DString[x][y]
                    for subject in subjects {
                        if subject.name == periodName {
                            if ArrayFile.Y11DActual.count == x {
                                if ArrayFile.Y11DActual[x - 1].count == 9 {
                                    ArrayFile.Y11DActual.append([])
                                }
                            }
                            var tempArray = ArrayFile.Y11DActual[x]
                            tempArray.append(subject)
                            ArrayFile.Y11DActual[x] = tempArray
                        }
                    }
                }
                y += 1
            }
            x += 1
        }
    }
    static func resetActualArrays() {
        ArrayFile.Y7AActual = [[]]
        ArrayFile.Y7BActual = [[]]
        ArrayFile.Y7CActual = [[]]
        ArrayFile.Y7DActual = [[]]
        ArrayFile.Y7EActual = [[]]
        ArrayFile.Y8AActual = [[]]
        ArrayFile.Y8BActual = [[]]
        ArrayFile.Y8CActual = [[]]
        ArrayFile.Y8DActual = [[]]
        ArrayFile.Y9AActual = [[]]
        ArrayFile.Y9BActual = [[]]
        ArrayFile.Y9CActual = [[]]
        ArrayFile.Y9DActual = [[]]
        ArrayFile.Y10AActual = [[]]
        ArrayFile.Y10BActual = [[]]
        ArrayFile.Y10CActual = [[]]
        ArrayFile.Y10DActual = [[]]
        ArrayFile.Y11AActual = [[]]
        ArrayFile.Y11BActual = [[]]
        ArrayFile.Y11CActual = [[]]
        ArrayFile.Y11DActual = [[]]
    }
    static func resetStringArrays() {
        ArrayFile.Y10AString = ArrayFile.Y10ARaw
        ArrayFile.Y10BString = ArrayFile.Y10BRaw
        ArrayFile.Y10CString = ArrayFile.Y10CRaw
        ArrayFile.Y10DString = ArrayFile.Y10DRaw
        ArrayFile.Y11AString = ArrayFile.Y11ARaw
        ArrayFile.Y11BString = ArrayFile.Y11BRaw
        ArrayFile.Y11CString = ArrayFile.Y11CRaw
        ArrayFile.Y11DString = ArrayFile.Y11DRaw
        ArrayFile.Y12 = ArrayFile.Y12Raw
        ArrayFile.Y13 = ArrayFile.Y13Raw
    }
}
